<?php

namespace App\Models;

use CodeIgniter\Model;

class FolderaksesModel extends Model
{
    protected $table = 'folder_access';
    protected $primaryKey = 'id';
    protected $useTimeStamps = false;

    protected $allowedFields = ['folder_id', 'user_id', 'nama_lengkap', 'folder_name'];

    public function getFolderAkses($id = null)
    {
        $this->join('users', 'user_id', 'LEFT');
        $this->join('folder', 'folder_id', 'LEFT');

        if (!$id) {
            return $this->findAll();
        }

        return $this->where('id', $id)->first();
    }
}
