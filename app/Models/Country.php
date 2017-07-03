<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Country extends Model
{
   /**
     * The table associated with the model.
     * @var string
     */
    protected $table = 'countries';
    /*
    * to manage field created_at and updated_at
    */
    public $timestamps = true;
    
    use SoftDeletes;
    // protected $dates = ['deleted_at'];

    /**
     * Get the provice for the country.
     */

    public function provinces()
    {
        return $this->hasMany('App\Models\Provinces');
    }

     public function shippingcompanies()
    {
        return $this->hasMany('App\Models\ShippingCompany');
    }

    public function stores(){
            return $this->hasOne('App\Models\Store');
        }
}
