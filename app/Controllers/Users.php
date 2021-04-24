<?php

namespace App\Controllers;

class Users extends BaseController
{
    public function __construct()
    {
        $this->userModel = new \App\Models\UserModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        $data = [
            'title' => 'Users',
            'user' => $this->userModel->getUser()
        ];
        return view('user/data', $data);
    }

    public function add()
    {
        $data = [
            'title' => "Add User",
            'validation' => $this->validation
        ];
        return view('user/add', $data);
    }

    public function save()
    {
        $this->validation->setRules([
            'nama_lengkap' => ['label' => 'Nama Lengkap', 'rules' => 'required'],
            'email' => ['label' => 'Email address', 'rules' => 'required|valid_email'],
            'no_telp' => ['label' => 'Phone Number', 'rules' => 'required'],
            'username' => ['label' => 'Username', 'rules' => 'required'],
            'password' => ['label' => 'Password', 'rules' => 'required'],
            'role' => ['label' => 'Role', 'rules' => 'required']
        ]);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/users/add')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $input['password'] = password_hash($input['password'], PASSWORD_DEFAULT);
        unset($input['csrf_test_name']);

        $this->userModel->save($input);
        return redirect()->to('/users');
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Update User',
            'user' => $this->userModel->getUser($id),
            'validation' => $this->validation
        ];
        return view('user/edit', $data);
    }

    public function update()
    {
        $this->validation->setRules([
            'nama_lengkap' => ['label' => 'Nama Lengkap', 'rules' => 'required'],
            'email' => ['label' => 'Email address', 'rules' => 'required|valid_email'],
            'no_telp' => ['label' => 'Phone Number', 'rules' => 'required'],
            'username' => ['label' => 'Username', 'rules' => 'required'],
            'role' => ['label' => 'Role', 'rules' => 'required']
        ]);

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);

        if (empty($input['password'])) {
            unset($input['password']);
        } else {
            $input['password'] = password_hash($input['password'], PASSWORD_DEFAULT);
        }

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/users/edit', $input['user_id'])
                ->withInput()
                ->with('validation', $this->validation);
        }

        $this->userModel->save($input);
        return redirect()->to('/users');
    }

    public function delete($id)
    {
        $this->userModel->delete($id);
        return redirect()->to('/users');
    }
}
