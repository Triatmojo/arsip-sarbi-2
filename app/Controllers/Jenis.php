<?php

namespace App\Controllers;

class Jenis extends BaseController
{
    public function __construct()
    {
        $this->jenisModel = new \App\Models\JenisModel();
        $this->kategoriModel = new \App\Models\KategoriModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        $data = [
            'title' => 'Jenis File',
            'jenis' => $this->jenisModel->get(),
        ];

        return view('jenis/data', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Add Jenis File',
            'kategori' => $this->kategoriModel->get(),
            'validation' => $this->validation
        ];

        return view('jenis/add', $data);
    }

    public function save()
    {
        $this->validation->setRules([
            'jenis_nama' => ['label' => 'Nama Jenis File', 'rules' => 'required'],
            'kategori_id' => ['label' => 'Kategori', 'rules' => 'required']
        ]);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/jenis/add')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $this->jenisModel->save($input);

        setToast('success', 'Data berhasil ditambah');
        return redirect()->to('/jenis');
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit Jenis File',
            'jenis' => $this->jenisModel->get($id),
            'kategori' => $this->kategoriModel->get(),
            'validation' => $this->validation
        ];

        return view('jenis/edit', $data);
    }

    public function update()
    {
        $this->validation->setRules([
            'jenis_nama' => ['label' => 'Nama Jenis File', 'rules' => 'required'],
            'kategori_id' => ['label' => 'Kategori', 'rules' => 'required'],
        ]);

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/jenis/edit/' . $input['jenis_id'])
                ->withInput()
                ->with('validation', $this->validation);
        }

        $this->jenisModel->save($input);

        setToast('success', 'Data berhasil diubah');
        return redirect()->to('/jenis');
    }

    public function multi_delete()
    {
        $check = $this->request->getVar('checked', FILTER_SANITIZE_STRING);

        foreach ($check as $id) {
            $this->jenisModel->delete($id);
        }

        setToast('success', 'Data berhasil dihapus');
        return redirect()->to('/jenis');
    }

    public function delete($id)
    {
        $this->jenisModel->delete($id);

        setToast('success', 'Data berhasil dihapus');
        return redirect()->to('/jenis');
    }
}
