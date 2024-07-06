<?php

namespace App\Models;

use CodeIgniter\Model;

class StatusPembelianModel extends Model
{
    protected $table            = 'status_pembelian';
    protected $primaryKey       = 'id';
    protected $allowedFields    = ['user_id', 'kamar_id', 'status_id', 'jumlah', 'transaksi', 'bukti_pembayaran'];

    public function countStatusPembelian()
    {
        return $this->countAll();
    }

    public function getStatusPembelian()
    {
        return $this->findAll();
    }

    public function getStatusPembelianByIdCountAllResults($id)
    {
        return $this->select('status_pembelian.*, kamar.*, user.username, user.email, daftar_status.*, status_pembelian.id')
            ->join('user', 'user.id = status_pembelian.user_id')
            ->join('kamar', 'kamar.id = status_pembelian.kamar_id')
            ->join('daftar_status', 'daftar_status.id = status_pembelian.status_id')
            ->where('status_pembelian.status_id', $id)
            ->countAllResults();
    }


    public function getStatusPembelianByIdFindAll($id)
    {
        return $this->select('status_pembelian.*, kamar.*, user.username, user.email, daftar_status.*, status_pembelian.id')
            ->join('user', 'user.id = status_pembelian.user_id')
            ->join('kamar', 'kamar.id = status_pembelian.kamar_id')
            ->join('daftar_status', 'daftar_status.id = status_pembelian.status_id')
            ->where('status_pembelian.status_id', $id)
            ->findAll();
    }
}
