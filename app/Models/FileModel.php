<?php

namespace App\Models;

use CodeIgniter\Model;

class FileModel extends Model
{
    protected $table = 'file';
    protected $primaryKey = 'file_id';
    protected $useTimestamps = true;

    protected $allowedFields = ['folder_id', 'nama_file', 'file', 'jenis_id', 'user_id'];

    public function getFile($tgl_awal = null, $tgl_akhir = null)
    {
        $this->orderBy('nama_lengkap', 'desc');
        $this->join('users', 'user_id', 'LEFT');
        $this->join('jenis', 'jenis_id', 'LEFT');
        $this->join('kategori', 'kategori_id', 'LEFT');
        $this->join('folder', 'folder_id', 'LEFT');

        if ($tgl_awal  &&  $tgl_akhir) {
            $this->where('file.created_at' . '>=', $tgl_awal);
            $this->where('file.created_at' . '<=', $tgl_akhir);
        }

        return $this->findAll();
    }

    public function getFilebyFolder($folder_id)
    {
        $this->join('jenis', 'jenis_id', 'LEFT');
        $this->where(['folder_id' => $folder_id]);
        return $this->findAll();
    }
}
