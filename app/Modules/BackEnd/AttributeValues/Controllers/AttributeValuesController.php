<?php namespace App\Modules\BackEnd\AttributeValues\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Attribute as Attribute;
use App\Modules\BackEnd\AttributeValues\Models\AttributeValues as AttributeValues;
class AttributeValuesController extends Controller {

	protected $view_namespace = 'BackEnd/AttributeValues::AttributeValues/';

	public function index()
	{
		$data = AttributeValues::all();
		$attribute = Attribute::all();
		$edit = 1;
		return view($this->view_namespace.'index',compact('attribute','data','edit'));
	}

	public function getEdit($id)
	{
		$attr = Attribute::all();
		$info = AttributeValues::findOrFail($id);
		return view($this->view_namespace.'edit',compact('info','attr'));

	}
	
	public function getDelete ($id) {
		$attr = AttributeValues::find($id)->delete();
		return Redirect()->route('admin.attributes-value')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Delete Attribute Value']);
	}

}
