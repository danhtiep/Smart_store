<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class StaffRange extends Model
{
    /**
     * The table associated with the model.
     * @var string
     */
    protected $table = 'staff_ranges';
    /*
    * to manage field created_at and updated_at
    */
    public $timestamps = true;
    
    use SoftDeletes;
    // protected $dates = ['deleted_at'];


    	public function stores(){
    		return $this->hasOne('App\Models\Store');
    	}
}
