<%-- 
    Document   : shop
    Created on : Jun 8, 2015, 11:47:34 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
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
                                                                                <a href="shop.jsp" > All </a> </h4>
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
                                                                               
                                                                            <h4 class="panel-title"> 
                                                                                <a href="selectCategory.jsp?cid=<%= cid %>" > <%= name %> </a> </h4>
                                                                        
                                                                                                                                                         
                                                                                 <%
                                                                                }
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                                System.out.println(e);
                                                                                 }
                                                                            
                                                                                %>
                                                                            
                                                                            
                                                                            
								</div>
							</div>
						</div><!--/category-productsr-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Brands</h2>
							 <% 
                                                                            try{
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from products group by brand");
                                                                                
                                                                                while(r.next())
                                                                                {
                                                                                    String name=r.getString(8);
                                                                                    int cid=r.getInt(10);
                                                                                     
                                                                               %>
                                                                               
                                                                            <h4 class="panel-title"> 
                                                                                <a href="selectCategory.jsp?cid=<%= cid %>"> <%= name %> </a> </h4>
                                                                        
                                                                                                                                                         
                                                                                 <%
                                                                                }
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                                System.out.println(e);
                                                                                 }
                                                                            
                                                                                %>
							<div class="brands-name">
							</div>
							
							
						</div><!--/brands_products-->
						
						<div class="price-range"><!--price-range-->
							<h2>Price Range</h2>
							<div class="well">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b>$ 0</b> <b class="pull-right">$ 600</b>
							</div>
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						
							 
                                                             <% 
                                                                            try{
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from products");
                                                                                
                                                                                while(r.next())
                                                                                {
                                                                                    int pid=r.getInt(1);
                                                                                    String img=r.getString(11);
                                                                                    int price=r.getInt(5);
                                                                                    String name=r.getString(3);
                                                                                    String weight=r.getString(4);
                                                                                    int discount=r.getInt(6);
                                                                                     
                                                                               %>

                                                                               
                                                                               
                                                                               <%@include file="include_in_category.jsp" %>
                                                               
                                                                                                                                                         
                                                                                 <%
                                                                                }
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                                System.out.println(e);
                                                                                 }
                                                                            
                                                                                %>
								
                                                        
						
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
	</section>
                                                        
</br>
</br>
</br>
	
<%@include file="footer.jsp" %>