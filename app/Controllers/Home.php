<?php

namespace App\Controllers;

class Home extends BaseController
{

	public function __construct()
	{
		$this->akses = new \App\Models\FolderaksesModel();
		$this->docsModel = new \App\Models\DocsModel();
		$this->fileModel = new \App\Models\FileModel();
		$this->userModel = new \App\Models\userModel();
		$this->jenisModel = new \App\Models\JenisModel();
	}

	public function index()
	{
		$countFolder = $this->akses->getFolderNotif(userdata('user_id'));
		$folder = $this->docsModel->getDoc();
		$files = $this->fileModel->getFile();
		$user = $this->userModel->getUser();


		$data = [
			'title' => "Home",
			'count' => $countFolder,
			'folder' => count($folder),
			'file' => count($files),
			'user' => count($user),
			'count_notif' => count($user),
		];

		return view('home', $data);
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
}
