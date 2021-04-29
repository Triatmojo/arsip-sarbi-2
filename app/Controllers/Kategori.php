<?php

namespace App\Controllers;

class Kategori extends BaseController
{
    public function __construct()
    {
        $this->kategoriModel = new \App\Models\KategoriModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        $data = [
            'title' => 'Kategori',
            'kategori' => $this->kategoriModel->get(),
        ];

        return view('kategori/data', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Add kategori',
            'validation' => $this->validation
        ];

        return view('kategori/add', $data);
    }

    public function save()
    {
        $this->validation->setRules(['kategori_nama' => ['label' => 'Nama Kategori', 'rules' => 'required']]);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/kategori/add')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $this->kategoriModel->save($input);
        return redirect()->to('/kategori');
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Add kategori',
            'kategori' => $this->kategoriModel->get($id),
            'validation' => $this->validation
        ];

        return view('kategori/edit', $data);
    }

    public function update()
    {
        $this->validation->setRules(['kategori_nama' => ['label' => 'Nama Kategori', 'rules' => 'required']]);

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/kategori/edit/' . $input['kategori_id'])
                ->withInput()
                ->with('validation', $this->validation);
        }

        $this->kategoriModel->save($input);

        return redirect()->to('/kategori');
    }

    public function multi_delete()
    {
        $check = $this->request->getVar('checked', FILTER_SANITIZE_STRING);

        foreach ($check as $id) {
            $this->kategoriModel->delete($id);
        }
        return redirect()->to('/kategori');
    }

    public function delete($id)
    {
        $this->kategoriModel->delete($id);
        return redirect()->to('/kategori');
    }
}
