<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'user_id';
    protected $useTimestamps = true;

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

    public function updatePassword($password = null, $userId)
    {
        $builder = $this->db->table('users');
        $builder->where(['user_id' => $userId]);
        return $builder->update(['password' => $password]);
    }
}
