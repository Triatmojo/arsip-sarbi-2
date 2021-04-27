<?php

namespace App\Models;

use CodeIgniter\Model;

class JenisModel extends Model
{
    protected $table = 'jenis';
    protected $primaryKey = 'jenis_Id';
    protected $useTimestamps = false;

    protected $allowedFields = ['jenis_nama'];

    public function get($id = null)
    {
        if (!$id) {
            return $this->findAll();
        }

        return $this->where(['kategori_id' => $id])->first();
    }
}
