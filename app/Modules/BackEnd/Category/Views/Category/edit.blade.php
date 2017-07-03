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
                        <h2>Category upate</h2>
                    </div>
                    <div class="box-content" style="background-color: #fff;">
                        <div class="box-content">
                        {!! Form::open(array('route'=>array('api.edit.category',$info['id']),'method'=>'patch','class'=>'form-horizontal','id'=>'form-add-edit-category','enctype'=>'multipart/form-data')) !!}
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input type="hidden" name="add" id="add" class="add" value="add" />
                          <fieldset>
                            <div class="control-group">
                              <label class="control-label" for="typeahead">Category Parent </label>
                              <div class="controls">
                                <select class="form-control" id="select-category" name="sltParent">
                                <option value="0">Please Choose Category</option>
                                <!-- ====== function app/Http/Helpers.php ======= -->
                                <?php menuStore ($cate,0,"---|",$info['parent_id']); ?>
                                </select>
                              </div>
                            </div>
                            <div class="control-group">
                              <label class="control-label" for="date01">Category Name*</label>
                              <div class="controls">
                                  <input id="txtCateName" name="txtCateName" type="text" class="form-control" placeholder="Please Enter Category Name" value="{!! old('txtCateName',isset($info) ? $info['name'] : null) !!}" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Status</label>
                                <div class="controls">
                                    <select id="selectStatus" name="status" class="form-control">
                                        <option value="-1">Select</option>
                                        <option value="1" @if($info['status'] == "1")
                                            selected
                                        @endif>Publish</option>
                                        <option value="0" @if($info['status'] == "0")
                                            selected 
                                        @endif>Unpublish</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                              <label class="control-label" for="fileInput">Images Current</label>
                              <div class="controls">
                                <img class="img_current" src="{!! asset('assets/uploads/category/'.$info['image']) !!}" />
                                <input type="hidden" name="img_current" value="{!! $info['image'] !!}" />
                              </div>
                            </div> 
                            <div class="control-group">
                              <label class="control-label" for="fileInput">Image</label>
                              <div class="controls">
                                <input type="file" name="fImages">
                              </div>
                            </div>         
                            <div class="form-actions">
                              <button type="submit" class="btn btn-success">Update</button>
                              <a class="btn btn-danger" href="{{route('admin.category')}}"> 
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
    $("#form-add-edit-category").validate({
        rules: {
            txtCateName: {
                required: true,
                minlength: 4
            }
              
        },
        //For custom messages
        messages: {
            txtCateName:{
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
