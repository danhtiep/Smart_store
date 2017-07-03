<?php 

	namespace App\Helpers;
	use App\Modules\RESTfulAPI\Attributes\Models\Attributes as Attribute;
	class AttributeHelper {

		public static function hello($x){
    		
    		return 'my name is: '.$x;
	    }
	    public static function attribute_by_id($id){
	    	$Attribute_by_id = Attribute::findOrFail($id);
	    	return $Attribute_by_id;
	    }
	    public static function match_attribute($info,$id,$i){
	    	foreach (unserialize($info)  as  $edit_data) {
               foreach ($edit_data as $key1 => $value1) {
                   if ($key1 == $id) {
                        foreach ($value1 as $value2) {
                        	if($i == $value2) {
                        		return 'match';
                        	}
                        }
                   }
	    		}
	    	}
		}
}