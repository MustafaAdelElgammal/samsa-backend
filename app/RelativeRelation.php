<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RelativeRelation extends Model
{
    protected $table = 'relative_relation';
    protected $fillable = ['name', 'notes'];
    protected $hidden = ['created_at', 'updated_at'];
}
