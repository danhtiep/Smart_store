<?php

Route::group(array('as' => 'api.', 'prefix' => 'api', 'module' => 'RESTfulAPI\Stock',  'namespace' => 'App\Modules\RESTfulAPI\Stock\Controllers', 'middleware' => 'web'), function() {
    
    Route::post('addStock', ['as' => 'add.stock', 'uses' => 'StockController@store']);
    Route::patch('editStock/{id}', ['as' => 'edit.stock', 'uses' => 'StockController@update']);
   	Route::post('attribute_ajax', ['as' => 'attribute_ajax', 'uses' => 'StockController@attribute_ajax']);
  
});