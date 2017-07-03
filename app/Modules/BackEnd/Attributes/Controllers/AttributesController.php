<?php namespace App\Modules\BackEnd\Attributes\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Attribute as Attribute;
use App\Helpers\AttributeHelper;
use App\Modules\BackEnd\Attributes\Models\Attributes as Attributes;
class AttributesController extends Controller {

	protected $view_namespace = 'BackEnd/Attributes::Attributes/';
	
	public function index()
	{
		$data = Attributes::paginate(5);
		return view($this->view_namespace.'index',['data'=>$data]);
	}

	public function getEdit($id)
	{
		$attr = Attributes::all();
		$edit_data = Attributes::findOrFail($id);
		$value = unserialize($edit_data->is_default);
		foreach ($value as $val)
		{
			$result[]=ltrim(rtrim($val," "));
		}
		$value = implode(' | ', $result );
		$info = Attributes::find($id);
		return view($this->view_namespace.'edit',compact('attr','info','value'));

	}
	
	public function getDelete ($id) {
		$attr = Attributes::find($id)->delete();
		return Redirect()->route('admin.attributes')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Delete Attribute']);
	}

}
