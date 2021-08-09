<?php

namespace App\Controllers;

class Laporan extends BaseController
{
    public function __construct()
    {
        $this->fileModel = new \App\Models\FileModel();
        $this->aksesModel = new \App\Models\FolderaksesModel();
    }

    public function index()
    {
        $data = [
            'title' => 'Laporan',
            'kategori' => $this->fileModel->getFile(),
            'periode' => []
        ];

        return view('laporan/data', $data);
    }

    public function search()
    {
        $input = $this->request->getVar(null, FILTER_SANITIZE_URL);
        $pecah = explode("-", $input['tanggal']);
        $tgl_awal = date('Y-m-d', strtotime($pecah[0]));
        $tgl_akhir = date('Y-m-d', strtotime($pecah[1]));

        $data = [
            'title' => "Laporan",
            'periode' => $this->fileModel->getFile($tgl_awal, $tgl_akhir),
            'folder' => $this->aksesModel->getFolder()
        ];

        return view('laporan/data', $data);
    }
}
