<%-- 
    Document   : home
    Created on : Jun 8, 2015, 10:09:09 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
                                                        <li data-target="#slider-carousel" data-slide-to="3"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>CACHE</span></h1>
									<h2>"Key to all your needs"</h2>
									<p>Now shopping for your everyday things is no more a tough and a headache job,Because now we will shop for you!! </p>
                                                                          <button type="button" class="btn btn-default get"><a href="shop.jsp">Let's Shop >>></a></button>
								</div>
								<div class="col-sm-6">
                                                                    <img src="images/home/cart1.jpg" width="480" height="200" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>CACHE</span></h1>
									<h2>"Key to all your needs"</h2>
									<p>Now shopping for your everyday things is no more a tough and a headache job,Because now we will shop for you!! </p>
                                                                          <button type="button" class="btn btn-default get"><a href="shop.jsp">Let's Shop >>></a></button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/cart2.JPG" width="480" height="100" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>CACHE</span></h1>
									<h2>"Key to all your needs"</h2>
									<p>Now shopping for your everyday things is no more a tough and a headache job,Because now we will shop for you!! </p>
                                                                          <button type="button" class="btn btn-default get"><a href="shop.jsp">Let's Shop >>></a></button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/cart3.JPG" width="480" height="200" class="girl img-responsive" alt="" />
									
								</div>
							</div>
                                                    
                                                    <div class="item">
								<div class="col-sm-6">
									<h1><span>CACHE</span></h1>
									<h2>"Key to all your needs"</h2>
									<p>Now shopping for your everyday things is no more a tough and a headache job,Because now we will shop for you!! </p>
                                                                          <button type="button" class="btn btn-default get"><a href="shop.jsp">Let's Shop >>></a></button>
								</div>
								<div class="col-sm-6">
									<img src="images/home/cart4.jpg" width="480" height="200" class="girl img-responsive" alt="" />
									
								</div>
							</div>
                                                	
							
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	




					<div class="category-tab"><!--category-tab-->
						<div class="col-sm-12">
                                                    <h2 class="title text-center">Our whole range for you!!</h2>
                                                    
							<ul class="nav nav-tabs">
                                                        
                                                            <li class="active"><a href="shop.jsp" data-toggle="tab">All</a></li>
								
                                                            
                                                                                                   <% 
                                                                            try{
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from category");
                                                                                
                                                                                while(r.next())
                                                                                {
                                                                                    String name=r.getString(2);
                                                                                    int cid=r.getInt(1);
                                                                                     
                                                                               %>
                                                                               
                                                                               <li><a href="selectCategory.jsp?cid=<%= cid %>" > <%= name %> </a></li>
                                                                                
                                                                                 
                                                                                                                                                         
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
					</div><!--/category-tab-->

                                         <div class="recommended_items"><!--most sold-->
						<h2 class="title text-center">most sold</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
                                                                    	
								<% 
                                                                            try{
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from new_addition");
                                                                                while(r.next())
                                                                                {
                                                                                int pid=Integer.parseInt(r.getString(2));
                                                                                r=s.executeQuery("select * from products where pid="+pid);
                                                                                while(r.next())
                                                                                {
                                                                                    String img=r.getString(11);
                                                                                    int price=r.getInt(5);
                                                                                    String name=r.getString(3);
                                                                                    String weight=r.getString(4);
                                                                                    int discount=r.getInt(6);
                                                                                    
                                                                                     
                                                                               %>

                                                                               
                                                                               
                                                                               <%@include file="include_in_category.jsp" %>
                                                               
                                                                                                                                                         
                                                                                 <%
                                                                                }}
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                                System.out.println(e);
                                                                                 }
                                                                            
                                                                                %>
								
                                                                </div>
								<div class="item"><div class="col-sm-4"><div class="product-image-wrapper"><div class="single-products"></div>
										</div>
									</div>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/most sold-->
                                        
                                        
					<div class="recommended_items"><!--new addition-->
						<h2 class="title text-center">new addition to our store</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									
								<% 
                                                                            try{
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from new_addition");
                                                                                while(r.next())
                                                                                {
                                                                                int pid=Integer.parseInt(r.getString(2));
                                                                                r=s.executeQuery("select * from products where pid="+pid);
                                                                                while(r.next())
                                                                                {
                                                                                    String img=r.getString(11);
                                                                                    int price=r.getInt(5);
                                                                                    String name=r.getString(3);
                                                                                    String weight=r.getString(4); 
                                                                                    int discount=r.getInt(6);
                                                                                     
                                                                                    
                                                                                     
                                                                               %>

                                                                               
                                                                               
                                                                               <%@include file="include_in_category.jsp" %>
                                                               
                                                                                                                                                         
                                                                                 <%
                                                                                }}
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                                System.out.println(e);
                                                                                 }
                                                                            
                                                                                %>
								
                                                        
							
                                                                
                                                                </div>
								<div class="item"><div class="col-sm-4"><div class="product-image-wrapper"><div class="single-products"></div>
										</div>
									</div>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/new addition-->
                                        
                                       
                                        
                                        
					
				</div>
			</div>
		</div>
	</section>
	
	
<%@include file="footer.jsp" %>