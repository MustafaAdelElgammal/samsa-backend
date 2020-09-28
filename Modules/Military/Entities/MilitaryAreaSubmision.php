<?php

namespace Modules\Military\Entities;

use Illuminate\Database\Eloquent\Model;

class MilitaryAreaSubmision extends Model
{
    protected $table = 'military_area_submision';
    protected $fillable = ['military_area_id', 'government_id', 'notes'];
    protected $hidden = ['created_at', 'updated_at'];

    public function militaryArea(){
        return $this->belongsTo('Modules\Military\Entities\MilitaryAreas', 'military_area_id')->with(['government']);
    }
    public function government(){
        return $this->belongsTo('App\Government', 'government_id')->with(['country']);
    }
    public function city(){
        return $this->belongsTo('App\City', 'city_id')->with(['government']);
    }
}
