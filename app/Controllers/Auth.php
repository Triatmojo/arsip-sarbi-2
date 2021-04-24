<?php

namespace App\Controllers;

class Auth extends BaseController
{
    public function __construct()
    {
        $this->userModel = new \App\Models\UserModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        $fruit = ['Anggur', 'Mangga', 'Melon', 'Apel', 'Alpukat', 'Kiwi', 'Sirsak', 'Jambu', 'Nanas', 'Pisang'];
        $data = [
            'title' => "Login",
            'captcha' => $fruit[rand(0, 10)],
            'validation' => $this->validation
        ];

        return view('auth/login', $data);
    }

    public function register()
    {
        $data = [
            'title' => "Registrasi",
            'validation' => $this->validation
        ];
        return view('auth/register', $data);
    }

    public function proses()
    {
        $this->validation->setRules([
            'username' => ['label' => 'Username', 'rules' => 'required'],
            'password' => ['label' => 'Password', 'rules' => 'required'],
            'captcha' => ['label' => 'Captha', 'rules' => 'required|matches[captcha_code]']
        ]);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/auth')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $username = $input['username'];
        $password = $input['password'];

        $user = $this->userModel->getUserByUsername($username);

        if (!$user) {
            setMsg('danger', 'Username tidak terdaftar!');
        } else {
            if (password_verify($password, $user['password'])) {
                if ($user['role'] === 'admin') {
                    session()->set('sarbi-sic', $user['user_id']);
                    return redirect()->to('/home');
                }
            } else {
                setMsg('danger', 'Password anda salah!');
            }
        }
        return redirect()->to('/auth');
    }

    private function _rules()
    {
        $this->validation->setRules([
            'nama_lengkap' => ['label' => 'Nama Lengkap', 'rules' => 'required'],
            'no_telp' => ['label' => 'Nomor Handphone', 'rules' => 'required'],
            'email' => ['label' => 'Email address', 'rules' => 'required|valid_email'],
            'username' => ['label' => 'Username', 'rules' => 'required|min_length[4]|alpha_dash'],
            'password' => ['label' => 'Password', 'rules' => 'required|min_length[4]|alpha_dash'],
        ]);
    }

    public function save()
    {
        $this->_rules();

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/auth/register')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $input['password'] = password_hash($input['password'], PASSWORD_DEFAULT);
        $input['role'] = 'karyawan';
        unset($input['csrf_test_name']);

        $this->userModel->save($input);
        setMsg('primary', '<strong>Daftar berhasil!</strong> silahkan login.');
        return redirect()->to('/auth');
    }

    public function logout()
    {
        session()->destroy('sarbi-sic');
        return redirect()->to('/auth');
    }
}
