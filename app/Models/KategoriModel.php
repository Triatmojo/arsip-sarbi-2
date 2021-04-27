<?php

namespace App\Models;

use CodeIgniter\Model;

class KategoriModel extends Model
{
    protected $table = 'kategori';
    protected $primaryKey = 'kategori_id';
    protected $useTimestamps = false;

    protected $allowedFields = ['kategori_nama'];

    public function get($id = null)
    {
        if (!$id) {
            return $this->findAll();
        }

        return $this->where(['kategori_id' => $id])->first();
    }
}
