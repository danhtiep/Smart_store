<?php

Route::group(array('as' => 'admin.', 'prefix' => 'admin','module' => 'BackEnd\AttributeValues', 'namespace' => 'App\Modules\BackEnd\AttributeValues\Controllers','middleware' => ['web','admin']), function() {

    Route::get('attributes-value', ['as' => 'attributes-value', 'uses' => 'AttributeValuesController@index']);
    Route::get('attributes-value/edit/{id}', ['as' => 'attributes-value-edit', 'uses' => 'AttributeValuesController@getEdit']);
    Route::get('attributes-value/delete/{id}', ['as' => 'attributes-value-delete', 'uses' => 'AttributeValuesController@getDelete']);
});	
