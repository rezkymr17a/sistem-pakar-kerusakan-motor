<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $table = 'tb_customer';

    public $fillable = [
        'kode_name',
        'name_gejala',
    ];
    // public $guarded = [];
    // // protected $fillable = ['kode_name', 'name_gejala'];
}