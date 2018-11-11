<%-- 
    Document   : selectCategory
    Created on : Jun 13, 2015, 8:14:13 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>CACHE</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
    
    <%
        try{
            int uid=1;
            //int uid=request.getParameter("uid");
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +91 9425923907</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> rajshreetotla@gmail.com</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								
							</div>
							
                                                </div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
                                                            <li><a href="account.jsp"><i class="fa fa-user"></i> Account</a></li>
                                                                <li><a href="wishlist.jsp"><i class="fa fa-star"></i> Wishlist</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="login.jsp"><i class="fa fa-lock"></i> Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="home.jsp" class="active">Home</a></li>
								<li><a href="shop.jsp" class="active">Shop</a></li>				
                                                                <li><a href="contacts.jsp" class="active" >Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	


</br>
</br>

	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
                                                                        
                                                                    <h4 class="panel-title"> 
                                                                        <a href="present_order.jsp" value="uid"> Present Orders </a> </h4>
                                                                    </br>
                                                                    <h4 class="panel-title"> 
                                                                        <a href="past_order.jsp" value="uid"> Previous Orders </a> </h4>
                                                                    </br>
                                                                    <h4 class="panel-title"> 
                                                                        <a href="change_password.jsp" value="uid" > Change Password </a> </h4>
                                                                    </br>
                                                                   <h4 class="panel-title"> 
                                                                       <a href="wishlist.jsp" value="uid"> Wishlist </a> </h4>
                                                                    </br>
                                                                     <h4 class="panel-title"> 
                                                                       <a href="mypage.jsp" value="uid"> My Page </a> </h4>
                                                                    
								
								</div>
							</div>
						</div><!--/category-productsr-->
					
						<div class="brands_products"><!--brands_products-->
							
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center"></h2>
							 
                                           
                                                             <div class="col-sm-4">
                                                       <div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
                                                                           
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											
										</div>
									</div>
								</div>
								<div class="choose">
									
								</div>
							</div> 
                                                    </div>
                                                            
                                                         
						<div class="col-sm-4">
							<div class="product-image-wrapper">
							  <div class="single-products">
								  <div class="productinfo text-center"></div>
							  </div>
						  </div>
						</div>
					  <div class="col-sm-4"><div class="product-image-wrapper"></div>
						</div>
						
						
						</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
                                                        
</br>
</br>
</br>
	
<%@include file="footer.jsp" %>