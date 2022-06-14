<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class userSite extends Model
{
    use HasFactory;
    protected $fillable  = [
        'sys_user_id',
        'site_id',
        'status',
        'user_id',
    ];
}
