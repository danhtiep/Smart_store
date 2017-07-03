@extends('layouts.backend.layout')
@section('content')
<style>
    .Current{float: left;}
    .Current_detail{float: left;margin: 0px -30px 0px 0px;}
    .Current_details{ width: 150px;float: left;border-radius:5px; height: 150px; margin-bottom: 20px; }
    .icon_del{position: relative;top:0px;left: -37px;}
    .img_current{width: 190px;height: 200px;}
    #del_img_demo{border-radius: 30px;}
    .thumbnail {margin-top: -22px;}
    .picture-partners-details { margin: 30px 10px;}
    /*.img_anhphu{width: 50px;margin-bottom: 20px}*/
    /*.icon_del{position: relative;top:-75px;left: -30px;}*/
    #insert{margin-top: 20px;}
</style>
<div id="breadcrumbs-wrapper">
        <div class="row">
            <div class="col-md-6">
                <h4 class="breadcrumbs-title">Stock management</h4>
                <br/>
            </div>
        </div>
    </div>
<div class="row" id="rowAddStock">
        <div class="col-md-12">
            <div class="panel panel-default" style="box-shadow:none">
                <div class="row">
                {!! Form::open(array('route'=>array('api.edit.stock',$info['id']),'method'=>'patch','enctype'=>'multipart/form-data','id'=>'form-edit-stock','name'=>'frmEditStock')) !!}
                    {{-- <form id="form-add-stock" enctype="multipart/form-data" name="frmEditStock"> --}}
                    <div class="col-lg-12" style="padding-bottom:120px">
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input type="hidden" name="add" id="add" class="add" value="add" />
                            
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Category Parent</label>
                                    <select class="form-control" name="sltParent">
                                        <option value="">Please Choose Category</option>
                                        <?php menuStore ($cate,0,$str="---|",$info["category_id"]); ?>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Name</label>
                                    <input class="form-control" name="txtStockName" placeholder="Please Enter Name" value="{!! old('txtStockName',isset($info) ? $info['name'] : null) !!}" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Cost</label>
                                    <input class="form-control" name="txtCost" placeholder="Please Enter Cost" value="{!! old('txtCost',isset($info) ? $info['cost'] : null) !!}" />
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Attribute Value</label>
                                    <select class="form-group col-md-12" id="attribute_value" name="attribute_value">
                                        <?php 
                                            foreach ($attribute_values as $value) {
                                               echo '<option value="'.$value->id.'">'.$value->name.'</option>';
                                            }
                                        ?>
                                    </select>
                                </div>
                                 <div id="show_product">
                                
                                    <?php 
                                        if($info['attribute'] != " ") {
    
                                    ?>

                                    <?php 
                                        foreach (unserialize($info['attribute'])  as  $edit_data) {
                                           foreach ($edit_data as $key1 => $value1) {
                                               if ($key1 == '$Attribute_id') {
                                                foreach ($value1 as $value2) {
                                                    echo $value2;
                                                }
                                                
                                               }
                                           }
                                        }

                                            foreach ($Attribute_values_by_id as $v){

                                                $attr_values = unserialize($v->is_default);

                                                foreach ($attr_values as $key => $Attribute_id){ ?>

                                                     <div class="form-group col-md-4">

                                                        <label><?php echo AttributeHelper::attribute_by_id($Attribute_id)->name; ?></label>
                                                                                   
                                                    <?php
                                                    foreach ($Attribute as $v){

                                                        if ($v->id == $Attribute_id){ ?>

                                                        <select data-placeholder="None" multiple class="chosen-select" tabindex="8" name="<?php echo $v->id; ?>[]">

                                                            <option value="" >None</option>

                                                            <?php 

                                                                $att_values = unserialize($v->is_default);

                                                                for($i = 0; $i < count($att_values) ; $i++){
                                                                    $match = AttributeHelper::match_attribute($info['attribute'],$Attribute_id,$i);
                                                                    if ($match == 'match') {
                                                                         echo '<option value="'.$i.'" selected>'.$att_values[$i].'</option>';
                                                                    }else{
                                                                        echo '<option value="'.$i.'" >'.$att_values[$i].'</option>';
                                                                    }

                                                                }

                                                            ?>

                                                         </select>


                                                    </div>

                                    <?php
                                                    }

                                                }
                                               
                                            }

                                        }

                                    ?>



                                    
                                    <?php $stock_attribute = unserialize($info->attribute);
                                        foreach ($stock_attribute as $stock_attribute) {
                                             
                                            foreach ($stock_attribute as $key => $value) {
                                                
                                            }
                                        }
                                    ?>
                                    <?php 
                                        }

                                        
                                    ?>
                            </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Stock code</label>
                                    <input class="form-control" name="txtStockcode" placeholder="Please Enter Stock code" value="{!! old('txtStockcode',isset($info) ? $info['stock_code'] : null) !!}" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Quote code</label>
                                    <input class="form-control" name="txtQuotecode" placeholder="Please Enter Quote code" value="{!! old('txtQuotecode',isset($info) ? $info['quote_code'] : null) !!}" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Min order allow</label>
                                    <input class="form-control" name="txtMinorder" placeholder="Please Enter Min Order " value="{!! old('txtMinorder',isset($info) ? $info['min_order_allow'] : null) !!}" />
                                </div>
                            </div>
                             
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Max order allow</label>
                                    <input class="form-control" name="txtMaxorder" placeholder="Please Enter Max Order" value="{!! old('txtMaxorder',isset($info) ? $info['max_order_allow'] : null) !!}" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Quantity</label>
                                    <input class="form-control" autocomplete="off" Min="1" Max="30" name="txtQuantity" placeholder="Please Enter Quantity" value="{!! old('txtQuantity',isset($info) ? $info['qty'] : null) !!}" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Reorder Quantity</label>
                                    <input class="form-control" autocomplete="off" Min="1" Max="30" name="txtReorderQuantity" placeholder="Please Enter Reorder Quantity" value="{!! old('txtReorderQuantity',isset($info) ? $info['reorder_qty'] : null) !!}" />
                                </div>
                            </div>
                            <div class="row">
                               <div class="form-group col-md-4">
                                        <label>Meta Keywords</label>
                                        <input class="form-control" name="txtKeywords" placeholder="Please Enter Category Keywords" value="{!! old('txtKeywords',isset($info) ? $info['meta_keyword'] : null) !!}" />
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
                                    <input class="form-control" name="txtRate" placeholder="Please Enter Rate" value="{!! old('txtRate',isset($info) ? $info['rating_num'] : null) !!}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Review Number </label>
                                    <input class="form-control" name="txtReview" placeholder="Review number" value="{!! old('txtReview',isset($info) ? $info['review_num'] : null) !!}" />
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Date</label>
                                    <input class="form-control" id="txtdate" name="txtdate"
                                    data-date-format="yyyy/mm/dd/" placeholder="mm/dd/yyyy" type="text" value="{!! old('txtdate',isset($info) ? $info['expired_date'] : null) !!}">
                                </div>
                               <div class="control-group col-md-4" >
                                <label >Status</label>
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
                            </div>
                            
                            <div class="row">
                                <div class="form-group col-md-12">
                                <label>Images current</label><br />
                                <div class="picture-partners">
                                    <div class="picture">
                                        <img id="blah" src="{!! asset('assets/uploads/stocks/'.$info['image']) !!}" alt="your image" />
                                        <input type='file' name="img_current" id="wizard-picture" onchange="readURL(this);" value="{!! $info['image'] !!}" />
                                    </div>
                                </div>
                                @foreach($stock_img as $key => $item)
                                    <div class="Current_detail" id="{!! $key !!}">
                                        <img class="Current_details" src="{!! asset('assets/uploads/stocks/alias/'.$item['caption']) !!}" idImage="{!! $item['id'] !!}" id="{!! $key !!}" />
                                        <a href="javascript:void(0)" data-id={!! $item['id'] !!} type="button" class="btn btn-danger btn-circle icon_del" id="del_img_demo" ><i class="fa fa-times"></i></a>
                                        
                                    </div>
                                @endforeach
                                <div id="insert"> </div>
                                    <div class="picture-partners-details">
                                         <div class="picture-details">
                                            <img  src="{!! url('assets/backEnd/template/img/ad.png') !!}" alt="your image" />
                                            <input id="files" name="ImagesDetail[]" type="file" multiple="multiple" />
                                        </div>
                                    </div> 
                                </div>
                             
                            </div>                          
                            <div class="form-group">
                                <label>Description</label>
                                <textarea class="form-control" rows="3" name="txtDescription">{!! old('txtDescription',isset($info) ? $info['description'] : null) !!}</textarea>
                            </div>
                            
                            <button  type="submit" class="btn btn-default" id="refresh">Update</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        
                    </div>
                   
                       
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>       
</div>


<script>
    $( function() {
    $( "#txtdate" ).datepicker();
  } );
     //====================== click button update images ===================//

    $(document).ready(function () {
    $("a#del_img_demo").on('click',function() {
        var id = $(this).data('id');
        var url = "{{route('admin.getDelImg')}}";
        var _token = $("form[name='frmEditStock']").find("input[name='_token']").val();
        var idImage = $(this).parent().find("img").attr("idImage");
        var img = $(this).parent().find("img").attr("src");
        var rid = $(this).parent().find("img").attr("id");
        $.ajax({
            url: url,
            type: 'GET',
            cache: false,
            data: {id:id,urlImage:img},
            success: function (data) {
                if (data == "Oke") {
                    $("#"+rid).remove();
                }else {
                    alert("Error ! Please Contact Admin");
                }

            }
        });
    });
});
</script>
<script>
     $(document).ready(function(){
    
    $("#form-edit-stock").validate({
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
        }
       
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