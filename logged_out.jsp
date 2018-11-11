<%-- 
    Document   : logged_out
    Created on : Jun 20, 2015, 2:51:36 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Shopper</title>
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
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									Select Your Place
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
                                                                    <% 
                                                                            try{
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from places");
                                                                                
                                                                                while(r.next())
                                                                                {
                                                                                    String place=r.getString(2);
                                                                                     
                                                                               %>
                                                                               
                                                                               <li> <a href="#"> <%=place %> </a>  </li>
                                                                        
                                                                                                                                                         
                                                                                 <%
                                                                                }
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                                System.out.println(e);
                                                                                 }
                                                                            
                                                                        %>
                                                                    
									
									
								</ul>
							</div>
							
                                                </div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
                                                            <li><a href="account.jsp"><i class="fa fa-user"></i> Account</a></li>
                                                                <li><a href="wishlist.jsp"><i class="fa fa-star"></i> Wishlist</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
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
         <h2 style="text-align: center"> Logged Out Successfully </h2>
        
        <%   
                    session.setAttribute("uid", null);
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server   
	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance   
	response.setDateHeader("Expires", -1); //Causes the proxy cache to see the page as "stale"   
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility   
        session.removeValue("uid");
        request.getSession().removeAttribute("uid");
          session.removeAttribute("uid");
	  request.getSession().invalidate();
          
          
          session=null;
          
	%>
        
        
        
        </br>
        
</br>
 </br>
  </br>
   </br> </br> </br> </br> </br> </br> </br> </br> </br> </br>
        
        
        <%@include file="footer.jsp" %>