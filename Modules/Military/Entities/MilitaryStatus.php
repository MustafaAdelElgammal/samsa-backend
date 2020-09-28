<?php

namespace Modules\Military\Entities;

use Illuminate\Database\Eloquent\Model;

class MilitaryStatus extends Model
{
    protected $table = 'military_status';
    protected $fillable = ['name', 'notes'];
    protected $hidden = ['created_at', 'updated_at'];

    public function applications() {
        return $this->hasMany('Modules\Adminsion\Entities\Application', 'military_status_id');
    }

    public function students() {
        return $this->hasMany('Modules\Student\Entities\Student', 'military_status_id');
    }

}
