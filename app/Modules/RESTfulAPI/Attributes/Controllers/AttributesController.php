<?php 
namespace App\Modules\RESTfulAPI\Attributes\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Attribute as Attribute;
use App\Helpers\Utils as Utils;
use Illuminate\Http\Request;
use App\Modules\RESTfulAPI\Attributes\Models\Attributes as Attributes;
class AttributesController extends Controller {

	public function store(Request $request)
	{
		$attr = new Attributes;
		$attr->name 		= $request->txtAttrName;
		$attr->is_default	= explode('|',$request->txtDefault);
		$attr->is_default	= serialize($attr->is_default);
		if($attr->save()){
			return json_encode(Utils::response_success($attr));
		}else{
			return json_encode(Utils::response_error("success"));
		}
	}

	public function update(Request $request,$id) {

		$attr = Attributes::find($id);
		$attr->name 			= $request->input('txtAttrName');
		$attr->is_default		= explode('|',$request->input('txtDefault'));
		$attr->is_default		= serialize($attr->is_default);
		$attr->save();
		return redirect()->route('admin.attributes')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Edit Attributes']);
	}

}
