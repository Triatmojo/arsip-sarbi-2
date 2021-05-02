<?php

namespace App\Controllers;

class Myfolder extends BaseController
{
    public function __construct()
    {
        $this->docsModel = new \App\Models\DocsModel();
        $this->folderModel = new \App\Models\FolderaksesModel();
        $this->akses = new \App\Models\FolderaksesModel();
        $this->validation = \Config\Services::validation();
    }

    public function index()
    {
        // folder yg dibagikan ke user/karyawan login
        $shared = $this->akses->getFolderShared(userdata('user_id'));
        
        dd($shared);
    }
}
