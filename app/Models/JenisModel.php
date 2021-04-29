<?php

namespace App\Models;

use CodeIgniter\Model;

class JenisModel extends Model
{
    protected $table = 'jenis';
    protected $primaryKey = 'jenis_id';
    protected $useTimestamps = false;

    protected $allowedFields = ['jenis_nama', 'kategori_id'];

    public function get($id = null)
    {
        $this->join('kategori', 'kategori_id', 'LEFT');

        if (!$id) {
            return $this->findAll();
        }

        return $this->where(['jenis_id' => $id])->first();
    }
}
