<?php

namespace Modules\Account\Entities;

use Illuminate\Database\Eloquent\Model;

class Bank extends Model
{
    protected $table = "account_banks";
    
    protected $fillable = [
        'name',
        'account_number',
        'branche',
        'init_balance',
        'balance',
        'notes'
    ];
     
    public function transformations() {
        return $this->hasMany("Modules\Account\Entities\Transformation", "bank_id");
    }
    
    public function deposites() {
        return $this->hasMany("Modules\Account\Entities\Deposite", "bank_id");
    }
    
    public function canDelete() {
        return !($this->transformations()->count() > 0 || $this->deposites()->count() > 0)? true : false;
    }
    
}