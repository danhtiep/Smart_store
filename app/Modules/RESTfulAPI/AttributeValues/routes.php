<?php

Route::group(array('as' => 'api.', 'prefix' => 'api','module' => 'RESTfulAPI\AttributeValues', 'namespace' => 'App\Modules\RESTfulAPI\AttributeValues\Controllers','middleware' => 'web'), function() {

    Route::post('addAttributesValues', ['as' => 'add.attributes-values', 'uses' => 'AttributeValuesController@store']);
    Route::patch('editAttributesValues/{id}', ['as' => 'edit.attributes-values', 'uses' => 'AttributeValuesController@update']);
    
    
});	