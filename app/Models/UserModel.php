<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'user_id';
    protected $useTimestamps = false;

    protected $allowedFields = ['nama_lengkap', 'email', 'no_telp', 'username', 'password', 'image', 'role'];

    public function getUser($id = null)
    {
        if (!$id) {
            return $this->findAll();
        }
        return $this->where(['user_id' => $id])->first();
    }

    public function getUserByUsername($username = null)
    {
        return $this->where(['username' => $username])->first();
    }

    public function insertUser($data = null)
    {
        $builder = $this->db->table('users');
        return $builder->insert($data);
    }

    public function updatePassword($password = null, $userId)
    {
        $builder = $this->db->table('users');
        $builder->where(['user_id' => $userId]);
        return $builder->update(['password' => $password]);
    }

    public function getMax($field = null)
    {
        $builder = $this->db->table('users');
        $builder->selectMax($field);
        return $builder->get()->getRowArray();
    }
}
