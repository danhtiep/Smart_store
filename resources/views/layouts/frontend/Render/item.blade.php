
    <link rel="stylesheet" type="text/css" href="{{ASSETS_PATH}}css/owl.carousel.css"/>
   
    <link rel="stylesheet" type="text/css" href="{{ASSETS_PATH}}css/owl.theme.css"/>
    
    <link rel="stylesheet" type="text/css" href="{{ASSETS_PATH}}css/responsive.css" media="all"/>

    
<!-- ==================================== -->

        <!-- End Item -->
        @foreach($stocks  as $item)
        <div class="item" >
            <div class="item-category-featured-product">
           
                <div class="product-thumb">
                    <a href="{!! url('stock-detail',[$item->id ]) !!}" class="product-thumb-link">

                        <img class="first-thumb" src="{{ asset('assets/uploads/stocks/'.$item->image) }}" alt=""/>
                        @foreach($imageStock as $item_detail)
                            @if($item->id == $item_detail['id'])
                                <img class="second-thumb" src="{{ asset('assets/uploads/stocks/alias/'.$item_detail['caption']) }}" alt=""/>
                            @endif
                        @endforeach
                    </a>
                    <div class="product-info-cart">
                        <div class="product-extra-link">
                            <a href="#" class="wishlist-link"><i class="fa fa-heart-o"></i></a>
                            <a href="#" class="compare-link"><i class="fa fa-toggle-on"></i></a>
                            <a href="#" class="quickview-link"><i class="fa fa-search"></i></a>
                        </div>
                        <a href="{{url('/cart/addItemBrand')}}/<?php echo $item->id; ?>" class="addcart-link"><i class="fa fa-shopping-basket"></i> Add to Cart</a>
                    </div>
                </div>
                <div class="product-info">
                    <h3 class="title-product"><a href="/detail">{!! $item->name !!} </a></h3>
                    <div class="info-price">
                        <span>${!! $item->cost !!} </span>
                        <del>$17.96</del>
                    </div>
                    <div class="product-rating">
                        <div class="inner-rating"></div>
                        <span>(3s)</span>
                    </div>
                </div>

                @if( $item->discount  == 40) 
                    <div class="percent-saleoff">
                        <span><label>{!! $item->discount !!}%</label>OFF</span>
                    </div>
                
                @endif
                @if( $item->discount  == 30) 
                    <div class="percent-saleoff">
                        <span><label>{!! $item->discount !!}%</label>OFF</span>
                    </div>
                
                @endif
                @if( $item->discount  == 15) 
                    <div class="percent-saleoff">
                        <span><label>{!! $item->discount !!}%</label>OFF</span>
                    </div>
                
                @endif
                @if( $item->discount  == 5) 
                    <div class="percent-saleoff">
                        <span><label>{!! $item->discount !!}%</label>OFF</span>
                    </div>
                
                @endif
                
            </div>
        </div>
       @endforeach

<!-- ======================================= -->

<script type="text/javascript" src="{{ASSETS_PATH}}js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="{{ASSETS_PATH}}js/bootstrap.min.js"></script>
<script type="text/javascript" src="{{ASSETS_PATH}}js/jquery.fancybox.js"></script>
<script type="text/javascript" src="{{ASSETS_PATH}}js/jquery-ui.js"></script>
<script type="text/javascript" src="{{ASSETS_PATH}}js/owl.carousel.js"></script>
<script type="text/javascript" src="{{ASSETS_PATH}}js/TimeCircles.js"></script>
<script type="text/javascript" src="{{ASSETS_PATH}}js/slideshow/jquery.themepunch.revolution.js"></script>

<script type="text/javascript" src="{{ASSETS_PATH}}js/theme.js"></script>