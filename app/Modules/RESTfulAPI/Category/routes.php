<?php

Route::group(array('as' => 'api.', 'prefix' => 'api', 'module' => 'RESTfulAPI\Category',  'namespace' => 'App\Modules\RESTfulAPI\Category\Controllers', 'middleware' => 'web'), function() {
    

    Route::post('addCategory', ['as' => 'add.category', 'uses' => 'CategoryController@store']);
    Route::patch('editCategory/{id}', ['as' => 'edit.category', 'uses' => 'CategoryController@update']);


    

});