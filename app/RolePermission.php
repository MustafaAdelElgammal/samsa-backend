<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RolePermission extends Model
{
    protected $table = 'permission_role';
    protected $fillable = ['permission_id', 'role_id'];

    public $timestamps = false;
    public function roles(){
        return $this->hasMany('App\Role');
    }
}
