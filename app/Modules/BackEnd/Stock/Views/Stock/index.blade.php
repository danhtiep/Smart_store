@extends('layouts.backend.layout')
@section('content')
<div id="breadcrumbs-wrapper">
        <div class="row">
            <div class="col-md-6">
                <h4 class="breadcrumbs-title">Stock management</h4>
                <br/>
            </div>
            <div  class="col-md-6">
                <div class="breadcrumbs-title" style="text-align:right">
                    <a id="assistant-label" class="normal-color-cursor">Create Stock</a>
                    <a id="add-assistant-button" class="btn btn-primary"><i class="fa fa-plus-circle"></i></a>
                </div>
            </div>
        </div>
    </div>
<div class="row-fluid sortable" id="rowAdd">
<div class="col-md-12">
            <div class="panel panel-default" style="box-shadow:none">
                <div class="row">
                    <form id="form-add-stock" enctype="multipart/form-data" method="POST">
                            <div class="col-lg-12" style="padding-bottom:120px">
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input type="hidden" name="add" id="add" class="add" value="add" />
                             <div class="row">
                             <div class="form-group col-md-4">
                                <label>Category Parent</label>
                                <select class="form-control" name="sltParent">
                                    <option value="">Please Choose Category</option>
                                    <?php menuStore ($cate_choose,0,$str="---|",old('sltParent')); ?>
                                </select>
                             </div>
                           
                                <div class="form-group col-md-4">
                                    <label>Name</label>
                                    <input class="form-control" name="txtStockName" placeholder="Please Enter Name" value="{!! old('txtName') !!}" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Cost</label>
                                    <input class="form-control" name="txtCost" placeholder="Please Enter Cost" value="" />
                                </div>
                                 
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Attribute Value</label><br />
                                    <select class="form-group col-md-12" id="attribute_value" name="attribute_value">
                                        <option >None</option>
                                        <?php 
                                            foreach ($attribute_values as $value) {
                                               echo '<option value="'.$value->id.'">'.$value->name.'</option>';
                                            }
                                        ?>
                                    </select>
                                </div>
                                <!-- ================ display attributes ==================== -->
                                <div id="show_attributes">
                                    
                                </div>
                                 <!-- ================ end display attributes ==================== -->
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Stock code</label>
                                    <input class="form-control" name="txtStockcode" placeholder="Please Enter Stock code" value="" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Quote code</label>
                                    <input class="form-control" name="txtQuotecode" placeholder="Please Enter Quote code" value="" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Min order allow</label>
                                    <input class="form-control" name="txtMinorder" placeholder="Please Enter Min Order " value="" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Max order allow</label>
                                    <input class="form-control" name="txtMaxorder" placeholder="Please Enter Max Order" value="" />
                                </div>
                                 <div class="form-group col-md-4">
                                    <label>Quantity</label>
                                    <input class="form-control" type="number" autocomplete="off" Min="1" Max="30" name="txtQuantity" placeholder="  Quantity" value="" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Reorder Quantity</label>
                                    <input class="form-control" type="number" autocomplete="off" Min="1" Max="30" name="txtReorderQuantity" placeholder=" Reorder Quantity" value="" />
                                </div>
                            </div>
                            <div class="row">
                               <div class="form-group col-md-4">
                                    <label>Meta Keywords</label>
                                    <input class="form-control" name="txtKeywords" placeholder="Please Enter Category Keywords" value="" />
                                </div>                     
                                <div class="form-group col-md-4">
                                    <label>Discount</label>
                                    <select class="form-control" name="sldiscount">
                                      <option value="" disabled selected class="discount">Discount</option>
                                      <option value="5">5%</option>
                                      <option value="15">15%</option>                                     
                                      <option value="30">30%</option>
                                      <option value="40">40%</option>
                                    </select>                               
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Rate </label>
                                    <input class="form-control" name="txtRate" placeholder="Please Enter Rate" value="" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Review Number </label>
                                    <input class="form-control" name="txtReview" placeholder="Review number" value="" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Date</label>
                                    <input class="form-control" id="txtdate" name="txtdate"
                                    data-date-format="yyyy/mm/dd/" placeholder="mm/dd/yyyy" type="text" >
                                </div>
                                <div class="control-group col-md-4">
                                <label class="control-label">Status</label>
                                <div class="controls">
                                    <select class="form-control" id="selectStatus" name="status">
                                        <option value="-1">Select</option>
                                        <option value="1">Publish</option>
                                        <option value="0">Unpublish</option>
                                    </select>
                                </div>
                            </div>
                                
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                <div class="picture-partners">
                                    <div class="picture">
                                        <img id="blah" src="{!! url('assets/backEnd/template/img/img5.png') !!}" alt="your image" />
                                        <input type='file' name="fImages" id="wizard-picture" onchange="readURL(this);" />
                                    </div>
                                </div>
                                <div id="insert"> </div>
                                    <div class="picture-partners-details">
                                         <div class="picture-details">
                                            <img  src="{!! url('assets/backEnd/template/img/ad.png') !!}" alt="your image" />
                                            <input id="files" name="ImagesDetail[]" type="file" multiple="multiple" />
                                        </div>
                                    </div> 
                                </div>
                             
                            </div>

                            <div class="row">                        
                            <div class="form-group col-md-12">
                                <label>Description</label>
                                <textarea class="form-control" rows="3" name="txtDescription"></textarea>
                            </div>
                            </div>
                            <button  type="submit" class="btn btn-default" id="refresh">Product Add</button>
                            <button type="reset" class="btn btn-default">Reset</button>

                        </div>
                    
                        </form>
                </div>
            </div>
        </div>
               
</div><!--/row-->
<div class="panel panel-default">
        <div class="row">
        <!-- thead -->
                 <a id="pull-to-refresh" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Refresh"><i class="fa fa-refresh"></i></a>
                    
                         
        <div class="col s12 m12 l12">

            <div id="jsGrid-static" class="col-md-12" style="position: relative; height: 70%; width: 100%;">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <table class="table user_table">
                          <thead>
                              <tr>
                                  <th>No.</th>
                                  <th>Name</th>
                                  <th>Cost</th>
                                  <th>Date</th>
                                  <th>Category</th>
                                  <th>Status</th>
                                  <th>Actions</th>
                              </tr>
                          </thead>   
                          <tbody id="body-data">
                            <?php $stt = 0 ?>
                        @foreach ($list_view as $item)
                             <?php $stt = $stt + 1 ?>
                            <tr class="odd gradeX" >
                                <td>{!! $stt !!}</td>
                                <td>{!! $item["name"] !!}</td>
                                <td>{!! $item["cost"] !!}</td>
                                <td>{!! $item["expired_date"] !!}</td>
                                <td>
                                    <?php $cate = DB::table('categories')->where('id',$item["category_id"])->first(); ?>
                                    @if (!empty($cate->name))
                                        {!! $cate->name !!}
                                    @endif
                                </td>
                                <td class="center">
                                    <?php 
                                        if($item['status'] == 1){
                                            echo '<span class="label label-success">Publish</span>';
                                        }elseif ($item['status'] == 0) {
                                            echo '<span class="label label-danger">Unpublish</span>';
                                        }
                                    ?>
                                </td>
                                <td >
                                    <a href="{{route('admin.stock-edit',$item['id'])}}" name="" class='edit_category btn btn-xs btn-info' style="cursor:pointer;">
                                        <i class="fa fa-edit" aria-hidden="true"></i>
                                    </a> | 
                                    <a onclick= "return youwantdelete('Are you sure you want to delete ?')" href="{{route('admin.stock-delete',$item['id'])}}" name="" class="delete_user btn btn-xs btn-danger" style="cursor:pointer;">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                    </a>
                                      </td>
                                </tr>
                        @endforeach
                        </tbody>
                    </table>
                    {!! $list_view->render() !!}
                </div>
            </div>
        </div>

        </div>
    </div>
    
<script>
    $( function() {
    $( "#txtdate" ).datepicker();
  } );
</script>

<script>

     $(document).ready(function(){
        
        // select attribute value
        $('#attribute_value').change(function(){
            var attribute_value_id = $(this).val();

            $.ajax({
                url:"{{route('api.attribute_ajax')}} ",
                method:"POST",
                data:{attribute_value_id:attribute_value_id},
                success:function(data){
                    $('#show_attributes').html(data);
                }
            });
        });
     
    $("#form-add-stock").validate({
        rules: {
            txtStockName: {
                required: true,
                minlength: 4
            }         
              
        },
        //For custom messages
        messages: {
            txtStockName:{
                required: "Enter a Stock Name",
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
        },
        submitHandler: function(form) {
            var formData = new FormData($("#form-add-stock")[0]);
            var url = "{{route('api.add.stock')}}";

            $.ajax({
                url: url,
                type: 'POST',
                data: formData,
                async: false,
                enctype: 'multipart/form-data',
                 success: function (data) {
                //     alert(data);
                   var dic = JSON.parse(data);
                    if(dic.code == 0){
                        swal({
                            title: "Oop!",
                            text: dic.message,
                            timer: 1000,
                            showConfirmButton: false
                        });
                    }
                    else if (formData == "add"){
                        swal("Successed!", "Thanks!", "success");
                      // alert(dic.data.name);
                        clearFormData();
                        createTable(dic.data);
                    }else{
                         swal("Successed!", "Thanks!", "success");
                         clearFormData();
                         // location.reload();
                         updatetble();
                    }
                },
                cache: false,
                contentType: false,
                processData: false
            });

        }
 
    });
});
</script>
<script type="text/javascript">
            $(document).ready(function() {
                $('input[type="file"]').imageuploadify();
            })

    $(document).ready(function(){
    // Prepare the preview for profile picture
        $("#wizard-picture").change(function(){
            readURL(this);
        });
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
     //====================== click add images details ===================//
     
      function handleFileSelect() {
    //Check File API support
    if (window.File && window.FileList && window.FileReader) {

        var files = event.target.files; //FileList object
        var output = document.getElementById("insert");

        for (var i = 0; i < files.length; i++) {
            var file = files[i];
            //Only pics
            if (!file.type.match('image')) continue;

            var picReader = new FileReader();
            picReader.addEventListener("load", function (event) {
                var picFile = event.target;
                var div = document.createElement("div");
                div.innerHTML = "<img class='thumbnail' src='" + picFile.result + "'" + "title='" + picFile.name + "'/>";
                output.insertBefore(div, null);
            });
            //Read the image
            picReader.readAsDataURL(file);
        }
    } else {
        console.log("Your browser does not support File API");
    }
}

document.getElementById('files').addEventListener('change', handleFileSelect, false);
     
   
</script>
@stop
@push('js')
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
@endpush