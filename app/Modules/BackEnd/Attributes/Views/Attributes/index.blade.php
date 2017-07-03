@extends('layouts.backend.layout')
@section('content')
    <div id="breadcrumbs-wrapper">
        <div class="row">
            <div class="col-md-6">
                <h4 class="breadcrumbs-title">Attribute management</h4>
                <br/>
            </div>
            <div  class="col-md-6">
                <div class="breadcrumbs-title" style="text-align:right">
                    <a id="assistant-label" class="normal-color-cursor">Create Attribute</a>
                    <a id="add-assistant-button" class="btn btn-primary"><i class="fa fa-plus-circle"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="row" id="rowAdd">
        <div class="col-md-12">
            <div class="panel panel-default" style="box-shadow:none">
                <div class="row">
                    <form  id="form-add-edit-attribute">
                        <div class="col-lg-12" style="padding-bottom:120px">
                        <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                        <input type="hidden" name="add" id="add" class="add" value="add" />
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label>Name</label>
                                    <input id="txtAttrName" name="txtAttrName" type="text" class="form-control" placeholder="Please Enter Attribute Name" value="{!! old('txtAttrName') !!}" />
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Value*</label>
                                    <input  rows="3" name="txtDefault" type="text" class="form-control" placeholder='Enter some text, or some attributes by "|" separating  values. ' />
                                </div>
                                <button  type="submit" class="btn btn-success" id="refresh" style="margin:23px;">Add</button> 
                            </div>
                        </div>     
                </form>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="row">
        <!-- thead -->
                 <a id="pull-to-refresh" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Refresh"><i class="fa fa-refresh"></i></a>
                    
                         
        <div class="col s12 m12 l12">

            <div id="jsGrid-static" class="col-md-12" style="position: relative; height: 70%; width: 100%;">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <table class="table user_table" style="width: 100%;">
                        <thead>
                            <tr class="jsgrid-header-row">
                                <th class="jsgrid-header-sortable" style="width: 30px;">No.</th>
                                <th class="jsgrid-header-sortable" style="width: 120px;">Name</th>
                                <th class="jsgrid-header-sortable" style="width: 70px;">Values</th>
                                <th class="jsgrid-header-sortable" style="width: 50px;">Action</th>
                            </tr>
                        </thead>
                        <tbody id="body-data">
                            <?php $stt = 0 ?>
                        @foreach ($data as $item)
                             <?php $stt = $stt + 1 ?>
                            <tr class="odd gradeX" >
                                <td>{!! $stt !!}</td>
                                <td>{!! $item["name"] !!}</td>
                                <td>
                                    <?php 
                                    $value_serialize = $item["is_default"];
                                    $value_unserialize = unserialize( $value_serialize);
                                    foreach ($value_unserialize  as $val) {
                                        $result[]=ltrim(rtrim($val," "));
                                    }
                                    echo implode(', ', $result);
                                    unset($result);
                                    ?>
                                </td>
                                    <td >
                                    <a href="{{route('admin.attributes-edit',$item['id'])}}" name="" class='edit_category btn btn-xs btn-info' style="cursor:pointer;">
                                        <i class="fa fa-edit" aria-hidden="true"></i>
                                    </a> | 
                                    <a onclick= "return youwantdelete('Are you sure you want to delete ?')" href="{{route('admin.attributes-delete',$item['id'])}}" name="" class="delete_user btn btn-xs btn-danger" style="cursor:pointer;">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                    </a>
                                      </td>
                                </tr>
                        @endforeach
                        </tbody>
                      </table>
                      {!! $data->render() !!}
                </div>
            </div>
        </div>

        </div>
    </div>


{{-- ================================================================ --}}

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
                required: "Enter a Attribute Name",
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
            var formData = new FormData($("#form-add-edit-attribute")[0]);
            var url = "{{route('api.add.attributes')}}";

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
    

    /*
    *clear data form add cate
    *
    */
    function clearDataForm(){
        $("#formValidate").trigger('reset');
    }  

   });
function appendDataToTableBody($data){
        var url_resource = "<?php echo asset("/");?>";
        var offset = $("tbody#body-data tr").length;
        $tbody = "";
        $class = "jsgrid-row";
        $start = offset +1;
        
        $("tbody#body-data").append($tbody);
    }

 function prependDatasToTable($data){
        var url_resource = "<?php echo asset("/");?>";
        var offset = $("tbody#body-data tr").length;
        $tbody = "";
        $class = "jsgrid-row";
        $start = offset +1;
        
        $("tbody#body-data").prepend($tbody);
    }
  
</script>
@stop

@push('js')
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
@endpush