<?php

namespace App\Controllers;

class Docs extends BaseController
{
    public function __construct()
    {
        $this->docsModel = new \App\Models\DocsModel();
        $this->fileModel = new \App\Models\FileModel();
        $this->kategoriModel = new \App\Models\KategoriModel();
        $this->jenisModel = new \App\Models\jenisModel();
        $this->validation = \Config\Services::validation();
        $this->mimeType = [
            'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
            'image/jpeg', 'image/png', 'application/pdf', 'application/vnd.ms-powerpoint',
            'application/vnd.openxmlformats-officedocument.presentationml.presentation',
            'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
            'application/x-rar-compressed', 'application/octet-stream', 'application/zip',
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
            'kategori' => $this->kategoriModel->get(),
            'folder_parent' => $id,
            'this_folder' => $this->docsModel->getDoc($id),
            'validation' => $this->validation
        ];

        if ($id != 0) {
            $data['this_folder'] = $this->docsModel->getDoc($id);
            $data['jenis'] = $this->jenisModel->where(['kategori_id' => $data['this_folder']['kategori_id']])->findAll();
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

        if ($fileDoc->isValid() && !$fileDoc->hasMoved()) {
            $tipeFile = $fileDoc->getClientMimeType();
            if (in_array($tipeFile, $this->mimeType)) {
                // get file name
                $fileName = $fileDoc->getRandomName();
                // move file to folder
                
                $data = $this->request->getVar(null, FILTER_SANITIZE_STRING);
                $data['file'] = $fileDoc;
                
                $nmFile = explode('.', $fileDoc->getClientName());
                array_pop($nmFile);
                $realFile = implode(' ', $nmFile);
                
                $data['nama_file'] = $realFile;
                $data['folder_id'] = $data['folder_id'];
                $data['file'] = $fileName;

                $fileDoc->move('files', $fileName);
                $this->fileModel->save($data);
            }
        } else {
            return view('docs/errors');
        }

        // return redirect()->to('/docs' . '/' . $data['folder_id']);
        return redirect()->to($_SERVER['HTTP_REFERER']);
    }

    public function renameFile()
    {
        $data = $this->request->getVar(null, FILTER_SANITIZE_STRING);
        $data['folder_id'] = $data['folder_id'];
        $this->fileModel->save($data);

        return redirect()->to('/docs' . '/'  . $data['folder_id']);
    }

    public function deleteFile($id)
    {
        $file = $this->fileModel->find($id);
        $path = FCPATH . 'files/';
        $folder = $file['folder_id'];

        if (is_file($path . $file['file'])) {
            unlink($path . $file['file']);
        }

        $this->fileModel->delete($id);
        return redirect()->to('/docs' . '/' . $folder);
    }

    public function upload_kategori($id)
    {
        $folder = $this->docsModel->where(['folder_id'=>$id])->first();
        $parent = $this->docsModel->where(['folder_id'=>$folder['folder_parent']])->first();

        $jenis = $this->jenisModel->where(['kategori_id'=>$folder['kategori_id']])->findAll();
        
        // Cek File yang sudah terupload
        $terupload = $this->fileModel->where(['folder_id'=>$folder['folder_id']])->findAll();
        $jnsupload = [];
        foreach ($terupload as $gt) {
            $jnsupload[] = $gt['jenis_id'];
        }

        $data = [
            'title'     => $parent['folder_name'].' / '.$folder['folder_name'],
            'folder'    => $folder,
            'jenis'     => $jenis,
            'jnsupload' => $jnsupload,
            'terupload' =>$terupload,
        ];

        return view('docs/upload_kategori', $data);
    }
}
