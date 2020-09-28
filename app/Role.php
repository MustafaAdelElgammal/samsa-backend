<?php

namespace App;

use Laratrust\Models\LaratrustRole;

class Role extends LaratrustRole
{

    //public $guarded = [];
    protected $fillable= ['name', 'display_name', 'description'];
    protected $hidden = [
        'created_at', 'updated_at'
    ];

    public function permissions(){
        return $this->belongsTo('App\RolePermission', 'role_id');
    }

}
