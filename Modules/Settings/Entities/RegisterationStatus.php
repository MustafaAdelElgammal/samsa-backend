<?php

namespace Modules\Settings\Entities;

use Illuminate\Database\Eloquent\Model;

use Modules\Adminsion\Entities\RegisterationStatusDocument;
use Modules\Adminsion\Entities\RequiredDocument;

class RegisterationStatus extends Model
{
    protected $table = 'registeration_status';
    protected $fillable = ['name', 'notes'];
    protected $hidden = ['created_at', 'updated_at'];
    
    /**
     * return all required document of registeration status
     * 
     * @return type
     */
    // public function requiredDocuments() {
    //     $ids = RegisterationStatusDocument::where('registeration_status_id', $this->id)->get();
    //     return RequiredDocument::whereIn('id', $ids); 
    // }

    public function requiredDocuments() {
        return $this->hasMany('Modules\Adminsion\Entities\RegisterationStatusDocument', 'registeration_status_id')->with(['requiredDocument']);
    }
}
