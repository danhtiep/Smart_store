<?php 
namespace App\Modules\RESTfulAPI\AttributeValues\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Attribute as Attribute;
use App\Helpers\Utils as Utils;
use Illuminate\Http\Request;
use App\Modules\RESTfulAPI\AttributeValues\Models\AttributeValues as AttributeValues;
class AttributeValuesController extends Controller {

	
	public function store(Request $request)
	{
		$attr = new AttributeValues;
		$attr->name 		= $request->AttrValueName;
		$attr->is_default	= serialize($request->attribute);
		if($attr->save()){
			return json_encode(Utils::response_success($attr));
		}else{
			return json_encode(Utils::response_error("success"));
		}
	}

	public function update(Request $request,$id) {

		$attr = AttributeValues::find($id);
		$attr->name 			= $request->input('AttrValueName');
		$attr->is_default		= serialize($request->input('attribute'));
		$attr->save();
		return redirect()->route('admin.attributes-value')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Edit Attributes value']);
	}

}
