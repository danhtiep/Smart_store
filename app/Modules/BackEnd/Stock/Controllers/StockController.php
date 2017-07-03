<?php namespace App\Modules\BackEnd\Stock\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input,File;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use App\Http\Helpers as Helpers;
use App\Models\Galleries as Galleries;
use App\Models\Stock as Stocks;
// use Illuminate\Support\Facades\DB as DB;
use App\Modules\BackEnd\Category\Models\Category as Category;
use App\Modules\BackEnd\Stock\Models\Stock as Stock;
use App\Modules\RESTfulAPI\Attributes\Models\Attributes as Attribute;
use App\Modules\BackEnd\AttributeValues\Models\AttributeValues as AttributeValues;
use App\Modules\RESTfulAPI\Stock\Controllers\StockController as API_StockController;
class StockController extends Controller {
	protected $view_namespace = 'BackEnd/Stock::Stock/';
	private $api_con_stock;
	
	public function __construct(API_StockController $api_stock)
    {
        $this->api_con_stock 	= $api_stock;
    }
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$list_view = Stock::orderBy('created_at', 'DESC')->paginate(5);
		$attribute_values = AttributeValues::all();
		$cate_choose = Category::select('name','id','parent_id')->get()->toArray();
		return view($this->view_namespace.'index',compact('cate_choose','attribute_values','list_view'));
	}
	// public function getList()
	// {
		
	// 	$list_view = Stock::paginate(20);
	// 	return view($this->view_namespace.'list',compact('list_view'));
	// }
	public function getEdit ($id) {
		$info = Stocks::find($id);
		$attribute_values = AttributeValues::all();
		$Attribute = Attribute::all();
		$Attribute_values_by_id = AttributeValues::where('id',$info->attribute_value)->get();
		$cate = Category::select('id','name','parent_id','status')->get()->toArray();
		
		$stock_img = Stocks::find($id)->gimagess()->get();
		return view($this->view_namespace.'edit',compact('cate','info','stock_img','attribute_values','Attribute','Attribute_values_by_id'));

	}
	public function getDelImg (Request $request) {
		 if ($request->ajax()) {
			$idImage = $request->id;
			$stock_img =  Galleries::find($idImage);
			if (!empty($stock_img)) {
				$img = 'assets/uploads/stocks/alias/'.$stock_img->caption;
				if (File::exists($img)) {
				    File::delete($img);
				}
				$stock_img->delete();
			}
			return "Oke";
		}
	}
	public function getDelete (Request $request,$id){
		$cate = Stock::find($id)->delete();
		$galleries = Galleries::where('galleryable_id',$id)->delete();
		return Redirect()->route('admin.stock')->with(['flash_level'=>'success','flash_message'=>'Success !! Complete Delete Stock']);
	}
	
}
