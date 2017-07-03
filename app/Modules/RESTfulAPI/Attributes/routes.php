<?php

Route::group(array('as' => 'api.', 'prefix' => 'api','module' => 'RESTfulAPI\Attributes', 'namespace' => 'App\Modules\RESTfulAPI\Attributes\Controllers','middleware' => 'web'), function() {

    Route::post('addAttributes', ['as' => 'add.attributes', 'uses' => 'AttributesController@store']);
    Route::patch('editAttributes/{id}', ['as' => 'edit.attributes', 'uses' => 'AttributesController@update']);
    
    
});	