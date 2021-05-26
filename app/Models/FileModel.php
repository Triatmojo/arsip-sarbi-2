<?php

namespace App\Models;

use CodeIgniter\Model;

class FileModel extends Model
{
    protected $table = 'file';
    protected $primaryKey = 'file_id';
    protected $useTimestamps = true;

    protected $allowedFields = ['folder_id', 'nama_file', 'file', 'jenis_id'];

    public function getFile()
    {
        return $this->findAll();
    }

    public function getFilebyFolder($folder_id)
    {
        $this->join('jenis', 'jenis_id', 'LEFT');
        $this->where(['folder_id' => $folder_id]);
        return $this->findAll();
    }
}
