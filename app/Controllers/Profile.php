<?php

namespace App\Controllers;

class Profile extends BaseController
{

    public function __construct()
    {
        $this->userModel = new \App\Models\UserModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        $data = [
            'title' => "Profile",
            'validation' => $this->validation
        ];
        return view('profile/data', $data);
    }


    private function _rules()
    {
        $this->validation->setRules([
            'nama_lengkap' => ['label' => 'Nama Lengkap', 'rules' => 'required'],
            'email' => ['label' => 'email', 'rules' => 'required|valid_email'],
            'no_telp' => ['label' => 'no_telp', 'rules' => 'required'],
            'image' => ['label' => 'Image', 'rules' => 'required|is_image[image]|mime_in[image, image/jpg,image/png,image/jpeg]']
        ]);
    }


    public function update()
    {
        $this->_rules();

        $profile = $this->request->getFile('image');

        $fileName = $profile->getRandomName();

        $profile->move('img', $fileName);

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $input['image'] = $fileName;

        if ($this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/profile/' . $input['user_id'])
                ->withInput()
                ->with('validation', $this->validation);
        }

        $this->userModel->save($input);
        return redirect()->to('/profile');
    }
}
