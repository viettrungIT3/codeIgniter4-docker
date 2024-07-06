<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table            = 'user';
    protected $primaryKey       = 'id';
    protected $allowedFields    = ['username', 'email', 'telepon', 'alamat', 'password'];

    public function getUser($username = false) #Jika ga ada parameter maka tampilakn semua dengan findall
    {
        if ($username == false) {
            return $this->findAll();
        }

        return $this->where(['username' => $username])->first(); #kalau ada maka tampilakn array pertama
    }

    public function getUserbyId($id)
    {
        return $this->find($id);
    }
}
