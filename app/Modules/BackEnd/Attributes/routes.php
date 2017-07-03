<?php

Route::group(array('as' => 'admin.', 'prefix' => 'admin','module' => 'BackEnd\Attributes', 'namespace' => 'App\Modules\BackEnd\Attributes\Controllers','middleware' => ['web','admin']), function() {

    Route::get('attributes', ['as' => 'attributes', 'uses' => 'AttributesController@index']);
    Route::get('attributes/edit/{id}', ['as' => 'attributes-edit', 'uses' => 'AttributesController@getEdit']);
    Route::get('attributes/delete/{id}', ['as' => 'attributes-delete', 'uses' => 'AttributesController@getDelete']);
});	
