<?php

namespace App\Models;

use CodeIgniter\Model;

class JenisModel extends Model
{
    protected $table = 'jenis';
    protected $primaryKey = 'jenis_id';
    protected $useTimestamps = false;

    protected $allowedFields = ['jenis_nama', 'kategori_id', 'is_required'];

    public function get($id = null)
    {
        $this->join('kategori', 'kategori_id', 'LEFT');

        if (!$id) {
            return $this->findAll();
        }

        return $this->where(['jenis_id' => $id])->first();
    }

    public function getFileIdByNull()
    {
        $this->join('file', 'jenis_id', 'LEFT');
        $this->where(['file_id' => null]);
        return $this->findAll();
    }
}
