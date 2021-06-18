<?php

namespace App\Controllers;

class Myfolder extends BaseController
{
    public function __construct()
    {
        $this->docsModel = new \App\Models\DocsModel();
        $this->fileModel = new \App\Models\FileModel();
        $this->jenisModel = new \App\Models\JenisModel();
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
        $file = $this->fileModel->where(['folder_id' => $folder_id])->findAll();

        $data = [
            'title' => "Dokumen " . $parent,
            'files' => $file,
        ];

        return view('docs/user_open_folder', $data);
    }

    public function upload_file($file)
    {
        $folder = $this->docsModel->where(['folder_id' => $file])->first();
        $parent = $this->docsModel->where(['folder_id' => $folder['folder_parent']])->first();

        $jenis = $this->jenisModel->where(['kategori_id' => $folder['kategori_id']])->findAll();

        // cek file yang sudah terupload
        $terupload = $this->fileModel->where(['folder_id' => $folder['folder_id']])->findAll();
        $jnsupload = [];
        foreach ($terupload as $gt) {
            $jnsupload[] = $gt['jenis_id'];
        }

        // cek file belum diupload
        $blmupload = [];
        foreach ($jenis as $jns) {
            // cek file yang harus diupload dan tidak
            if ($jns['is_required'] == 1) {
                // cek file yang telah diupload
                if (!in_array($jns['jenis_id'], $jnsupload)) {
                    $blmupload[] = $jns;
                }
            }
        }

        $data = [
            'title' => $parent['folder_name'] . ' / ' . $folder['folder_name'],
            'folder'    => $folder,
            'jenis'     => $jenis,
            'jnsupload' => $jnsupload,
            'terupload' => $terupload,
            'blmupload' => $blmupload,
        ];


        return view('docs/upload_kategori', $data);
    }

    public function parent($parent_id)
    {
        $parent = $this->docsModel->getDoc($parent_id);
        $folder = $this->akses->getFolderShared(userdata('user_id'), $parent_id);
        $data = [
            'title'  => "Dokumen " . $parent['folder_name'],
            'folder' => $folder,
        ];

        return view('docs/user_open_parent', $data);
    }
}
