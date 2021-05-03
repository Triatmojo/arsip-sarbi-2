<?php

namespace App\Controllers;

class Myfolder extends BaseController
{
    public function __construct()
    {
        $this->docsModel = new \App\Models\DocsModel();
        $this->fileModel = new \App\Models\FileModel();
        $this->akses = new \App\Models\FolderaksesModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        // folder yg dibagikan ke user/karyawan login
        $shared = $this->akses->getFolderShared(userdata('user_id'));
        
        $data = [
            'title' => 'My Folder',
            'shared' => $shared,
        ];
        
        return view('docs/user_folder', $data);
    }

    public function folder($parent, $folder_id)
    {
        $file = $this->fileModel->where(['folder_id'=>$folder_id])->findAll();
        
        $data = [
            'title' => "Dokumen ".$parent,
            'files' => $file,
        ];
        
        return view('docs/user_open_folder', $data);
    }

    public function parent($parent_id)
    {
        $parent = $this->docsModel->getDoc($parent_id);
        $folder = $this->akses->getFolderShared(userdata('user_id'), $parent_id);

        $data = [
            'title'  => "Dokumen ".$parent['folder_name'],
            'folder' => $folder
        ];

        return view('docs/user_open_parent', $data);
    }
}
