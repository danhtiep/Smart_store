@extends('layouts.backend.layout')
@section('content')

<div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2>Update Attribute value</h2>
                    </div>
                    <div class="box-content" style="background-color: #fff;margin-bottom: 18px;">
                        <div class="box-content">
                         {!! Form::open(array('route'=>array('api.edit.attributes-values',$info['id']),'method'=>'patch','class'=>'form-horizontal','id'=>'form-add-edit-category','enctype'=>'multipart/form-data')) !!}
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input type="hidden" name="add" id="add" class="add" value="add" />
                          <fieldset>
                            <div class="control-group">
                              <label class="control-label" for="date01"> Name*</label>
                              <div class="controls">
                                  <input id="AttrValueName" name="AttrValueName" type="text" class="form-control" placeholder=" Attribute Value Name" value="{!! old('AttrValueName',isset($info) ? $info['name'] : null) !!}" />
                                </div>
                            </div>
                        
                            <div class="control-group">
                                <label class="control-label">Select Attributes</label>
                                <div class="controls">
                                    <select data-placeholder="Select Your Attributes" multiple class="chosen-select" tabindex="8" name="attribute[]">
                                    <?php 
                                        if($info['is_default'] != " ") {
                                            
                                            $value_array = unserialize($info->is_default);
                                            foreach ($attr as $value){
                                                $attribute_id_array[] = $value->id;
                                            }
                                            $selected = array_intersect($value_array, $attribute_id_array);
                                            $not_selected = array_diff($value_array, $attribute_id_array);
                                            foreach ($attr as $value1){
                                                foreach ($selected as $selected_val){
                                                    if ($value1->id == $selected_val) {
                                                        echo "<option value='{$value1->id}' selected>{$value1->name}</option>";
                                                    }
                                                }
                                            }
                                            foreach ($attr as $value2){
                                                foreach ($not_selected as $not_selected_val){
                                                    if ($value2->id == $not_selected_val) {
                                                        echo "<option value='{$value2->id}'>{$value2->name}</option>";
                                                    }
                                                }
                                            }

                                        }else{
                                            foreach ($attr as $value){
                                                echo "<option value='{$value->id}'>{$value->name}</option>";
                                            }
                                        }
                                    ?>
                                      
                                    </select>
                                </div>
                            </div>
         
                            <div class="form-actions">
                              <button type="submit" class="btn btn-success">Update</button>
                              <a class="btn btn-danger" href="{{route('admin.attributes-value')}}"> 
                                        Cancel
                                    </a>
                            </div>
                          </fieldset>
                         {!! Form::close() !!}  

                    </div> 
                            
                    </div>
                </div><!--/span-->
                 
                
</div><!--/row-->
<script type="text/javascript">
   $(document).ready(function(){
     //hide form before

        
    $("#form-add-edit-attribute").validate({
        rules: {
            AttrValueName: {
                required: true,
                minlength: 4
            }
              
        },
        //For custom messages
        messages: {
            AttrValueName:{
                required: "Enter a Attribute Values Name",
                minlength: "Enter at least 5 characters"
            }
        },
        errorElement : 'div',
        errorPlacement: function(error, element) {
            
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error);
            } else {
                error.insertAfter(element);
            }
        }
 
    });
   
  
</script>

@stop

@push('js')

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    
@endpush