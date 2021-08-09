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


    public function getFolderShared($user_id, $parent_id = null)
    {
        if ($parent_id == null) {
            $this->simpleQuery("SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''))");
            $this->groupBy('folder.folder_parent');
            $this->select('GROUP_CONCAT(folder.folder_name) as folder');
        } else {
            $this->select('folder.folder_name as folder');
            $this->where('folder.folder_parent', $parent_id);
        }

        $this->select('folder.folder_id,parent.folder_name as parent,folder.folder_parent,folder.updated_at,folder_access.user_id');
        $this->join('folder', 'folder_id', 'left');
        $this->join('folder as parent', 'folder.folder_parent=parent.folder_id', 'left');
        return $this->where('folder_access.user_id', $user_id)->findAll();
    }

    public function getFolderNotif($user_id)
    {
        $this->select('folder.folder_id,folder.folder_name as nama,parent.folder_name as parent,folder.folder_parent,folder.updated_at,folder_access.user_id');
        $this->join('folder', 'folder_id', 'left');
        $this->join('folder as parent', 'folder.folder_parent=parent.folder_id', 'left');
        return $this->where('folder_access.user_id', $user_id)->findAll();
    }

    public function getFolder()
    {
        $this->join('folder', 'folder_id', 'LEFT');
        $this->join('folder as parent', 'folder.folder_parent=parent.folder_id', 'LEFT');
        return $this->findAll();
    }

    public function deleteAkses($id)
    {
        $builder = $this->db->table('folder_access');
        $builder->where($id);
        return $builder->delete();
    }
}
