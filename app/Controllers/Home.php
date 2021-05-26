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
	}

	public function index()
	{
		$countFolder = $this->akses->getFolderShared(userdata('user_id'));
		$folder = $this->docsModel->getDoc();
		$files = $this->fileModel->getFile();
		$user = $this->userModel->getUser();

		$data = [
			'title' => "Home",
			'count' => $countFolder,
			'folder' => count($folder),
			'file' => count($files),
			'user' => count($user)
		];

		return view('home', $data);
	}
}
