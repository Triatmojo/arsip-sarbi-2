<?php

namespace App\Controllers;

class Docs extends BaseController
{
    public function __construct()
    {
        $this->docsModel = new \App\Models\DocsModel();
        $this->fileModel = new \App\Models\FileModel();
        $this->validation = \Config\Services::validation();
        $this->mimeType = [
            'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
            'image/jpeg','image/png', 'application/pdf', 'application/vnd.ms-powerpoint',
            'application/vnd.openxmlformats-officedocument.presentationml.presentation',
            'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
            'application/x-rar-compressed', 'application/octet-stream','application/zip',
            'application/octet-stream', 'application/x-zip-compressed', 'multipart/x-zip',
            'application/x-7z-compressed'
        ];
    }

    public function index($id = 0)
    {
        $data = [
            'title' => 'Home',
            'folder' => $this->docsModel->getParent($id),
            'files' => $this->fileModel->getFilebyFolder($id),
            'folder_parent' => $id,
            'validation' => $this->validation
        ];

        if ($id != 0) {
            $data['prev_folder'] = $this->docsModel->getParentIdByFolder($id);
        }

        return view('docs/index', $data);
    }

    public function save()
    {
        $this->validation->setRules(['folder_name' => ['label' => 'Nama Folder', 'rules' => 'required']]);

        if (!$this->validation->withRequest($this->request)->run()) {
            return redirect()
                ->to('/docs')
                ->withInput()
                ->with('validation', $this->validation);
        }

        $input = $this->request->getVar(null, FILTER_SANITIZE_STRING);

        $this->docsModel->save($input);
        return redirect()->to('/docs/' . $input['folder_parent']);
    }

    public function deleteFolder($id)
    {
        $del =  $this->docsModel->getParentIdByFolder($id);

        $this->docsModel->delete($id);
        return redirect()->to('/docs/' . $del);
    }

    public function addFile()
    {
        $fileDoc = $this->request->getFile('file');

        if ($fileDoc->isValid() && ! $fileDoc->hasMoved()) {
            $tipeFile = $fileDoc->getClientMimeType();
            if (in_array($tipeFile, $this->mimeType)) {
                // get file name
                $fileName = $fileDoc->getRandomName();
                // move file to folder
                $fileDoc->move('files', $fileName);

                $data = $this->request->getVar(null, FILTER_SANITIZE_STRING);
                $data['file'] = $fileDoc;
        
                $nmFile = explode('.', $fileDoc->getClientName());
                array_pop($nmFile);
                $realFile = implode(' ', $nmFile);
    
                $data = [
                'nama_file' => $realFile,
                'folder_id' => $data['folder_id'],
                'file' => $fileName
            ];

                $this->fileModel->save($data);
            }
        } else {
            echo "Anda belum memilih file";
            die;
        }

        return redirect()->to('/docs'. '/' . $data['folder_id']);
    }

    public function renameFile()
    {
        $data = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $data['folder_id'] = $data['folderId'];
        $this->fileModel->save($data);

        return redirect()->to('/docs'. '/' . $data['folder_id']);
    }

    public function deleteFile($id)
    {
        $file = $this->fileModel->find($id);
        $path = FCPATH.'files/';
        $folder = $file['folder_id'];

        if (is_file($path . $file['file'])) {
            unlink($path . $file['file']);
        }
        
        $this->fileModel->delete($id);
        return redirect()->to('/docs'.'/' . $folder);
    }

    public function table()
    {
        $data = ['title' => 'Table'];
        return view('table', $data);
    }
}