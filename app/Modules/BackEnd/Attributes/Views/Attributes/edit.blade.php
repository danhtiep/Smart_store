@extends('layouts.backend.layout')
@section('content')
<style>
    .img_current{width: 50px;}
    .img_anhphu{width: 50px;margin-bottom: 20px}
    .icon_del{position: relative;top:-75px;left: -30px;}
    #insert{margin-top: 20px;}
</style>
<!-- =============================================== category update =================================== -->
<div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2>Attribute upate</h2>
                    </div>
                    <div class="box-content" style="background-color: #fff;">
                        <div class="box-content">
                        {!! Form::open(array('route'=>array('api.edit.attributes',$info['id']),'method'=>'patch','class'=>'form-horizontal','id'=>'form-add-edit-attribute','enctype'=>'multipart/form-data')) !!}
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input type="hidden" name="add" id="add" class="add" value="add" />
                          <fieldset>
                            <div class="control-group">
                              <label class="control-label" for="date01">Name*</label>
                              <div class="controls">
                                  <input id="txtAttrName" name="txtAttrName" type="text" class="form-control" placeholder="Please Enter Attribute Name" value="{!! old('txtAttrName',isset($info) ? $info['name'] : null) !!}" />
                                </div>
                            </div>
                            <div class="control-group">
                              <label class="control-label" for="date01">Value*</label>
                              <div class="controls">
                                  <textarea class="form-control" rows="3" name="txtDefault" placeholder='Enter some text, or some attributes by "|" separating  values. '>{{ $value }}</textarea>
                            </div>
         
                            <div class="form-actions">
                              <button type="submit" class="btn btn-success">Update</button>
                              <a class="btn btn-danger" href="{{route('admin.attributes')}}"> 
                                        Cancel
                                    </a>
                            </div>
                          </fieldset>
                         {!! Form::close() !!}   

                    </div> 
                            
                    </div>
                </div><!--/span-->
                
</div><!--/row-->
<!-- ================================================= end ==============================================  -->
    
   <script type="text/javascript">
   $(document).ready(function(){  
    $("#form-add-edit-attribute").validate({
        rules: {
            txtAttrName: {
                required: true,
                minlength: 4
            }
              
        },
        //For custom messages
        messages: {
            txtAttrName:{
                required: "Enter a Category Name",
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
