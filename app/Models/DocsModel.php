<?php

namespace App\Models;

use CodeIgniter\Model;

class DocsModel extends Model
{
    protected $table = 'folder';
    protected $primaryKey = 'folder_id';
    protected $useTimeStamps = true;

    protected $allowedFields = ['folder_name', 'folder_parent', 'jenis_akses'];

    public function getDoc($id = null)
    {
        if (!$id) {
            return $this->findAll();
        }
        return $this->where('folder_id', $id)->first();
    }

    public function getParent($parent)
    {
        $this->orderBy('folder_name', 'asc');
        return $this->where('folder_parent', $parent)->findAll();
    }

    public function getParentIdByFolder($id)
    {
        return $this->where('folder_id', $id)->first()['folder_parent'];
    }
}
