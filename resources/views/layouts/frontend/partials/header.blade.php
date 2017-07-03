
        <div class="top-toggle hidden-xs">
            <div class="container">
                <div class="inner-top-toggle">
                    <div class="top-toggle-info">
                        <h2>Extra <strong>30% off</strong></h2>
                        <p>Mangto &amp; accessories for men’s</p>
                        <a class="shop-now" href="#">shop now <i class="fa fa-angle-right"></i></a>
                    </div>
                    <div data-date="10/15/2016" class="top-toggle-coutdown" data-tc-id="8f93604f-9b76-1984-8678-3d0f34935250"><div class="time_circles"><canvas width="270" height="67"></canvas><div class="textDiv_Days" style="top: 24px; left: 0px; width: 67.5px;"><span class="number">25</span><span class="text">day</span></div><div class="textDiv_Hours" style="top: 24px; left: 68px; width: 67.5px;"><span class="number">8</span><span class="text">hou</span></div><div class="textDiv_Minutes" style="top: 24px; left: 135px; width: 67.5px;"><span class="number">21</span><span class="text">min</span></div><div class="textDiv_Seconds" style="top: 24px; left: 203px; width: 67.5px;"><span class="number">22</span><span class="text">sec</span></div></div></div>
                    <a class="close-top-toggle" href="#"><i class="fa fa-times"></i></a>
                </div>
            </div>
        </div>
        <div class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <ul class="top-menu">
                            <li><a href="about.html">About</a></li>
                            <li><a href="blog-v2.html">Blog</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-md-9 col-sm-8 col-xs-12">
                        <ul class="top-info">
                       
                            <li class="top-account has-child">
                                <a href="my-account.html">My Account</a>
                                <ul class="sub-menu-top">
                                @if(!isset($user))
                                    <li><a href="{{url('/user/login')}}"><i class="fa fa-unlock-alt"></i> Sign in</a>
                                @else
                                    <li><a href="{{url('/user-info')}}"><i class="fa fa-user"></i>{{$user->username}}</a></li>
                                    <li><a href="{{url('/user/logout')}}"><i class="fa fa-unlock-alt"></i> Logout</a>
                                @endif
                                    <li><a href="#"><i class="fa fa-heart-o"></i> Wish List</a></li>
                                    <li><a href="#"><i class="fa fa-toggle-on"></i> Compare</a></li>
                                    </li>
                                    <li><a href="/checkout"><i class="fa fa-sign-in"></i> Checkout</a></li>
                                </ul>
                            </li>
                            
                            <li class="top-help has-child">
                                <a href="#">Help</a>
                                <ul class="sub-menu-top">
                                    <li><a href="#">Help Center</a></li>
                                    <li><a href="#">Submit A Complaint</a></li>
                                </ul>
                            </li>
                            <li class="top-mobile"><a href="#">Mobile </a></li>
                            <li class="top-language has-child">
                                <a href="#" class="language-selected"><img src="{{ASSETS_PATH}}images/home1/flag-default.jpg" alt=""/>English </a>
                                <ul class="sub-menu-top">
                                    <li><a href="#"><img src="{{ASSETS_PATH}}images/home1/flag-england.jpg" alt=""/>English</a></li>
                                    <li><a href="#"><img src="{{ASSETS_PATH}}images/home1/flag-french.jpg" alt=""/>French</a></li>
                                    <li><a href="#"><img src="{{ASSETS_PATH}}images/home1/flag-german.jpg" alt=""/>German</a></li>
                                </ul>
                            </li>
                            <li class="top-currency has-child">
                                <a href="#" class="currency-selected">USD</a>
                                <ul class="sub-menu-top">
                                    <li><a href="#"><span>€</span>EUR</a></li>
                                    <li><a href="#"><span>¥</span>JPY</a></li>
                                    <li><a href="#"><span>$</span>USD</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Top Header -->
        <div class="header">
            <div class="container">
                <div class="header-main">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class="logo">
                                <a href="/"><img src="{{ASSETS_PATH}}images/home1/logo.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-6 col-xs-12">
                            <div class="smart-search">
                                <div class="select-category">
                                    <a href="#" class="category-toggle-link"><span>All Categories</span></a>
                                    <ul class="list-category-toggle sub-menu-top">
                                    <?php 
                                        $fashion_level_1 = DB::table('categories')->where('parent_id',0)->get();
                                    ?>
                                    @foreach($fashion_level_1 as $item_level_1)
                                        <?php 
                                            $fashion_level_2 = DB::table('categories')->where('parent_id',$item_level_1->id)->get();
                                        ?>
                                        @foreach($fashion_level_2 as $item_level_2)
                                        <li><a href="{!! URL('stock-category-type',[$item_level_2->id]) !!}">{!! ucwords($item_level_2->name) !!}</a></li>
                                        @endforeach
                                    @endforeach
                                    </ul>
                                </div>
                                <form action="/search" class="smart-search-form" method="post">
                                <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                                    <input id="proList" name="search_data" type="text" value="I am shopping for..." onfocus="if (this.value==this.defaultValue) this.value = ''" onblur="if (this.value=='') this.value = this.defaultValue" />
                                    <input type="submit" name="_token" value="" />
                                </form>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-3 col-xs-12 hidden-xs">
                            <div class="mini-cart">
                                <a href="{{url('/cart')}}" class="header-mini-cart">
                                    <span class="total-mini-cart-item"> Item({{Cart::count()}}) - </span>
                                    <span class="total-mini-cart-price">${{Cart::total()}}</span>
                                </a>
                                <div class="content-mini-cart">
                                    <h2>{{Cart::count()}} ITEMS IN MY CART</h2>
                                    <ul class="list-mini-cart-item">
                                    <?php 
                                    // data from cart
                                    $cartData = Cart::content();
                                    ?>
                                    @foreach($cartData as $cartD)
                                        <li>
                                            <div class="mini-cart-edit">
                                                <a href="{{url('/cart/remove')}}/<?php echo $cartD->rowId; ?>" class="delete-mini-cart-item"><i class="fa fa-trash-o"></i></a>
                                                <a href="#" class="updatecart edit-mini-cart-item" id="{{$cartD->rowId}}"><i class="fa fa-pencil-square-o"></i></a>
                                            </div>
                                            <div class="mini-cart-thumb">
                                                <a href="#"><img src="{{asset('assets/uploads/stocks/'.$cartD->options->img) }}" alt="" /></a>
                                            </div>
                                            <div class="mini-cart-info">
                                                <h3><a href="#">{{$cartD->name}}</a></h3>
                                                <div class="info-price">
                                                    <span>${{$cartD->price}}</span>
                                                    <del>$17.96</del>
                                                </div>
                                                <div class="info-qty" >
                                                    <span class="qty-down">-</span>
                                                    <span class="qty qty-val" style="padding:0px 8px;">{{$cartD->qty}}</span>
                                                    <span class="qty-up">+</span>
                                                </div>
                                            </div>
                                        </li>
                                     @endforeach 
                                    </ul>
                                    <div class="mini-cart-total">
                                        <label>TOTAL</label>
                                        <span>${{Cart::total()}}</span>
                                    </div>
                                    <div class="mini-cart-button">
                                        <a href="/cart" class="mini-cart-view">view my cart </a>
                                        <a href="/checkout" class="mini-cart-checkout">Checkout</a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Mini Cart -->
                        </div>
                    </div>
                </div>
                <div class="header-nav">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-6 hidden-sm">
                            <div class="category-dropdown @yield('dropdown-cls')">                           
                                <h2 class="title-category-dropdown"><span>Categories</span></h2>                               
                                <div class="wrap-category-dropdown">
                                    <ul class="list-category-dropdown">
                                    <?php 
                                        $menu_level_1 = DB::table('categories')->where('parent_id',0)->get();
                                    ?>
                                    @foreach($menu_level_1 as $item_level_1)
                                        <?php 
                                            $menu_level_2 = DB::table('categories')->where('parent_id',$item_level_1->id)->get();
                                        ?>
                                        @foreach($menu_level_2 as $item_level_2)
                                        <li class="has-cat-mega">
                                            <a href="#" >{!! $item_level_2->name !!}</a>
                                            <img src="{!! asset('assets/uploads/category/'.$item_level_2->image) !!}" alt="" />
                                            <div class="cat-mega-menu cat-mega-style1">
                                                <div class="row">
                                                <?php 
                                                    $menu_level_3 = DB::table('categories')->where('parent_id',$item_level_2->id)->get();
                                                ?>
                                                @foreach($menu_level_3 as $item_level_3)
                                                    <div class="col-md-4 col-sm-3">
                                                        <div class="list-cat-mega-menu">
                                                            <h2 class="title-cat-mega-menu">{!! $item_level_3->name !!}</h2>
                                                            <ul>
                                                            <?php 
                                                                $menu_level_4 = DB::table('categories')->where('parent_id',$item_level_3->id)->get();
                                                            ?>
                                                            @foreach($menu_level_4 as $item_level_4)
                                                                <li><a href="{!! URL('stock-category-type',[$item_level_4->id]) !!}">{!! $item_level_4->name !!}</a></li>
                                                            @endforeach
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    @endforeach
                                                    {{-- <div class="col-md-4 col-sm-3">
                                                        <div class="zoom-image-thumb">
                                                            <a href="#"><img src="{{ASSETS_PATH}}images/home1/cat-mega-thumb.png" alt="" /></a>
                                                        </div>
                                                    </div> --}}
                                                </div>
                                            </div> 
                                        </li>
                                            @endforeach
                                        @endforeach
                                    </ul>
                                    <a href="#" class="expand-category-link"></a>
                                </div>
                                
                            </div>
                            <!-- End Category Dropdown -->
                        </div>
                        <div class="col-md-9 col-sm-12 col-xs-6">
                            <nav class="main-nav">
                                <ul>
                                    <li>
                                        <a href="{{url('/')}}">home</a>
                                        
                                    </li>
                                     <?php 
                                        $menu_level_1 = DB::table('categories')->where('parent_id',0)->take(5)->get();
                                    ?>
                                    @foreach($menu_level_1 as $item_level_1)
                                    <li>
                                        <a href="{!! URL('stock-category-type',[$item_level_1->id]) !!}">{!! $item_level_1->name !!}</a>
                                        
                                    </li>
                                    @endforeach
                                    
                                </ul>
                                <a href="#" class="toggle-mobile-menu"><span>Menu</span></a>
                            </nav>
                            <!-- End Main Nav -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header -->
    