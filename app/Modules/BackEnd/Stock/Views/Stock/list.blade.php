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
                <a href="{{route('admin.stock-add')}}" id="assistant-label" class="normal-color-cursor">Create Product</a>
                <a href="{{route('admin.stock-add')}}" id="add-assistant-button" class="btn btn-primary"><i class="fa fa-plus-circle"></i></a>
            </div>
        </div>
        </div>
    </div>

<div class="row-fluid sortable" id="rowAddStock">
            
                <div class="box span12">

                    <div class="box-header well" data-original-title>
                        <h2>Product List</h2>
                    </div>
                    <div class="box-content">
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
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
        </div><!--/span-->
                
               
</div><!--/row-->
<div class="box span12">
       

               
</div><!--/row-->


<script>
    $( function() {
    $( "#txtdate" ).datepicker();
  } );
</script>
<script type="text/javascript">
            $(document).ready(function() {
                $('input[type="file"]').imageuploadify();
            })
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
                    $('#show_product').html(data);
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
@stop
@push('js')
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
@endpush