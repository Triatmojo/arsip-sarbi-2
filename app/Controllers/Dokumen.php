<?php

namespace App\Controllers;

class Dokumen extends BaseController
{
    public function __construct()
    {
        $this->docsModel = new \App\Models\DocsModel();
        $this->folderModel = new \App\Models\FolderaksesModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        $data = [
            'title' => 'Dokumen',
            'dokumen' => $this->docsModel->getDoc()
        ];
        return view('dokumen/data', $data);
    }

    public function add()
    {
        $data = [
            'title' => 'Add Dokumen',
            'validation' => $this->validation
        ];
        return view('dokumen/add', $data);
    }

    public function save()
    {
        $this->validation->setRules([
            'folder_name' => ['label' => 'Nama Folder', 'rules' => 'required'],
            'type_folder' => ['label' => 'Type Folder', 'rules' => 'required']
        ]);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/dokumen/add')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        unset($input['csrf_test_name']);

        $this->docsModel->save($input);
        return redirect()->to('/dokumen');
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Update Dokumen',
            'validation' => $this->validation,
            'dokumen' => $this->docsModel->getDoc($id)
        ];

        return view('dokumen/edit', $data);
    }

    public function update()
    {
        $this->validation->setRules([
            'folder_name' => ['label' => 'Nama Folder', 'rules' => 'required'],
            'type_folder' => ['label' => 'Type Folder', 'rules' => 'required']
        ]);

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        unset($input['csrf_test_name']);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/dokumen/edit', $input['folder_id'])
                ->withInput()
                ->with('validation', $this->validation);
        }

        $this->docsModel->save($input);

        return redirect()->to('/dokumen');
    }

    public function delete($id)
    {
        $this->docsModel->delete($id);
        return redirect()->to('/dokumen');
    }

    public function akses($id)
    {
        $data = [
            'title' => 'User Akses',
            'folderAkses' => $this->folderModel->getFolderAkses()
        ];
        return view('dokumen/aksesFolder', $data);
    }

    public function deleteUser($id)
    {
        $aksesId =  $this->folderModel->getFolderAkses($id);
        $this->folderModel->delete($id);
        return redirect()->to('/dokumen/akses/' . $aksesId);
    }
}
