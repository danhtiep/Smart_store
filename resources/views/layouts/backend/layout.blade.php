<?php $path = Config::get('constants.assets.backendTemplate'); ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <title>Online store</title>

        <!-- Google-Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:100,300,400,600,700,900,400italic' rel='stylesheet'>
        <!-- ============================link uploade images ====================== -->
         {{-- <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"> --}}
         {{-- {!! Html::style('assets/backEnd/template/css/imageuploadify.min.css') !!} --}}
        <!-- ============================ end ====================================== -->
        
        {!! Html::style('assets/backEnd/template/css/app.css') !!}
        {!! Html::style('assets/backEnd/template/css/style.css') !!}
        {!! Html::style('assets/backEnd/template/css/charisma-app.css') !!}
        {!! Html::style('assets/backEnd/template/css/bootstrap-cerulean.css') !!}
        {!! Html::style('assets/backEnd/template/css/bootstrap1.min.css') !!}
        {!! Html::style('assets/backEnd/template/css/bootstrap-chosen.css') !!}

          @stack('css')
          @stack('js')
    </head>
    <body>
        <!-- Aside Start-->
        <aside class="left-panel">
             @include('layouts.backend.partials.left_sidebar_nav')    
        </aside>
        <!-- Aside Ends-->
        <!--Main Content Start -->
        <section class="content">
            <!-- Header -->
            <header class="top-head container-fluid">
                @include('layouts.backend.partials.header')
            </header>
            <!-- Header Ends -->

            <!-- Page Content Start -->
            <!-- ================== -->
            <!-- ================alert massage -=-==========-->
            <div class="col-lg-12" >
                @if (Session::has('flash_message'))
                    <div style="background-color: #2eb82e; color: #fff;" class="alert alert-{!! Session::get('flash_level') !!}">
                        {!! Session::get('flash_message') !!}
                    </div>
                @endif
            </div>
            <!-- ================end ===================-->
            <div class="wraper container-fluid">
                 @yield('content')
            </div>
            <!-- Page Content Ends -->
            <!-- ================== -->
            
            <!-- Footer Start -->
            <footer class="footer">
                 @include('layouts.backend.partials.footer')
            </footer>
            <!-- Footer Ends -->



        </section>
        <!-- Main Content Ends -->
        {!! Html::script('assets/backEnd/template/js/app.js') !!}
        <!-- ===========================script chosen ===========================-->
        <script src="http://harvesthq.github.io/chosen/chosen.jquery.js"></script>
        <script>
          $(function() {
            $('.chosen-select').chosen();
            $('.chosen-select-deselect').chosen({ allow_single_deselect: true });
          });
        </script>
        <!-- ======================= end =========================== -->
        <!-- ======================= script attribute select value =========================== -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
        <script type="text/javascript">
            var JQ = $.noConflict(true);
        </script>
        <script>
            
            JQ(document).ready(function(){
            // select attribute value
            JQ('#attribute_value').change(function(){
                var attribute_value_id = JQ(this).val();

            JQ.ajax({
                url:"{{route('api.attribute_ajax')}} ",
                method:"POST",
                data:{attribute_value_id:attribute_value_id},
                success:function(data){
                    JQ('#show_product').html(data);
                }
            });
        });
        });
        </script>
        <!-- ======================= end =========================== -->
        <script>
            $(document).ready(function() {
                 //hide form before
                    $("#rowAdd").toggle();
                    $("a#add-assistant-button").click(function(){
                        var label_name = $("#assistant-label").html();
                        if(label_name == "Close"){
                            //to clear data evenif it is edit form
                            //clearFormData();
                            $("#assistant-label").html("Create Category");
                            $(this).find("i").removeClass("fa fa-minus");
                            $(this).find("i").addClass("fa fa-plus-circle");
                        }
                        else{
                            $("#assistant-label").html("Close");
                            $(this).find("i").removeClass("fa fa-plus-circle");
                            $(this).find("i").addClass("fa fa-minus");
                        }
                        $("#row-form").toggle(500);
                    });
                     /*
                    *hide form create 
                    *
                    */
                    $("#rowAdd").hide();
                    $("#add-assistant-button").click(function(){
                        $("#rowAdd").toggle(1500);

                    });
                    // /*hide form update 
                    // *
                    // */
                    // $("#rowUpdate").hide();
                    // $("#update-assistant-button").click(function(){
                    //     $("#rowUpdate").toggle(1500);

                    // });
                     /* refresh function -----------*/
                    $( "#pull-to-refresh" ).click(function() {setTimeout(function() {
                            location.reload();
                        },500);
                    });
                });
               
                $("div.alert").delay(3000).slideUp();

                function youwantdelete (msg) {
                    if (window.confirm(msg)) {
                        return true;
                    }
                    return false;
                }
               
        </script>
       <script>
            // $(document).ready(function() {
               
            

            // function youwantdelete (msg) {
            //     if (window.confirm(msg)) {
            //         return true;
            //     }
            //     return false;
            // },
            jQuery(document).ready(function() {
                    
                // Tags Input
                jQuery('#tags').tagsInput({width:'auto'});

                // Form Toggles
                jQuery('.toggle').toggles({on: true});

                // Time Picker
                jQuery('#timepicker').timepicker({defaultTIme: false});
                jQuery('#timepicker2').timepicker({showMeridian: false});
                jQuery('#timepicker3').timepicker({minuteStep: 15});

                // Date Picker
                jQuery('#datepicker').datepicker();
                jQuery('#datepicker-inline').datepicker();
                jQuery('#datepicker-multiple').datepicker({
                    numberOfMonths: 3,
                    showButtonPanel: true
                });
                
                //colorpicker start

                $('.colorpicker-default').colorpicker({
                    format: 'hex'
                });
                $('.colorpicker-rgba').colorpicker();


                //multiselect start

                $('#my_multi_select1').multiSelect();
                $('#my_multi_select2').multiSelect({
                    selectableOptgroup: true
                });

                $('#my_multi_select3').multiSelect({
                    selectableHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    selectionHeader: "<input type='text' class='form-control search-input' autocomplete='off' placeholder='search...'>",
                    afterInit: function (ms) {
                        var that = this,
                            $selectableSearch = that.$selectableUl.prev(),
                            $selectionSearch = that.$selectionUl.prev(),
                            selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                            selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

                        that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                            .on('keydown', function (e) {
                                if (e.which === 40) {
                                    that.$selectableUl.focus();
                                    return false;
                                }
                            });

                        that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                            .on('keydown', function (e) {
                                if (e.which == 40) {
                                    that.$selectionUl.focus();
                                    return false;
                                }
                            });
                    },
                    afterSelect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    },
                    afterDeselect: function () {
                        this.qs1.cache();
                        this.qs2.cache();
                    }
                });

                //spinner start
                $('#spinner1').spinner();
                $('#spinner2').spinner({disabled: true});
                $('#spinner3').spinner({value:0, min: 0, max: 10});
                $('#spinner4').spinner({value:0, step: 5, min: 0, max: 200});
                //spinner end

                // Select2
                jQuery(".select2").select2({
                    width: '100%'
                });
            });
    </script>

    </body>
</html>
