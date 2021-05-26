<?php

namespace App\Controllers;

use Config\Validation;

class Auth extends BaseController
{
    public function __construct()
    {
        $this->userModel = new \App\Models\UserModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {

        $fruit = ['Anggur', 'Mangga', 'Melon', 'Apel', 'Alpukat', 'Kiwi', 'Sirsak', 'Jambu', 'Nanas', 'Pisang', 'Lemon'];
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
                if ($user['role']) {
                    session()->set('sarbi-sic', $user['user_id']);

                    setToast('success', 'Yeay anda berhasil login');
                    return redirect()->to('/home');
                }
            } else {
                setMsg('danger', 'Password anda salah!');
            }
        }
        return redirect()->to('/auth')->withInput();
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

    public function updatePassword()
    {
        $data = [
            'title' => "Change Password",
            'validation' => $this->validation
        ];

        return view('profile/ubah_password', $data);
    }

    public function changePassword()
    {

        $this->validation->setRules([
            'old_password' => ['label' => 'Password Lama', 'rules' => 'required|min_length[4]|alpha_dash'],
            'password' => ['label' => 'Password Baru', 'rules' => 'required|min_length[4]|alpha_dash'],
            'password2' => ['label' => 'Konfirmasi Password', 'rules' => 'required|min_length[4]|alpha_dash|matches[password]'],
        ]);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/auth/updatePassword')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $userId = $this->userModel->getUser(['user_id' => userdata('user_id')]);

        if (password_verify($input['old_password'], $userId['password'])) {
            $newPass = password_hash($input['password'], PASSWORD_DEFAULT);
            $this->userModel->updatePassword($newPass, $userId['user_id']);
            setToast('success', 'Password berhasil diubah, Silahkan login kembali');
            return redirect()->to('/auth/updatePassword');
        } else {
            setToast('warning', 'Old Password does not matched with db password');
            return redirect()->to('/auth/updatePassword');
        }
    }

    public function logout()
    {
        session()->destroy('sarbi-sic');
        return redirect()->to('/auth');
    }
}
