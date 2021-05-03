<?php

namespace App\Models;

use CodeIgniter\Model;

class FolderaksesModel extends Model
{
    protected $table = 'folder_access';
    protected $primaryKey = 'id';
    protected $useTimeStamps = false;

    protected $allowedFields = ['folder_id', 'user_id'];

    public function getFolderAkses($id = null)
    {
        $this->join('users', 'user_id', 'LEFT');
        $this->join('folder', 'folder_id', 'LEFT');

        if (!$id) {
            return $this->findAll();
        }

        return $this->where('id', $id)->first();
    }

    public function getFolderShared($user_id)
    {
        $this->select('folder.folder_id,folder.folder_name,folder.updated_at,folder_access.user_id');
        $this->join('folder', 'folder_id', 'left');
        return $this->where('folder_access.user_id', $user_id)->findAll();
    }
}
