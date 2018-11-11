<%-- 
    Document   : include_in_category
    Created on : Jun 17, 2015, 11:18:00 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
                                                    <div class="col-sm-4">
                                                       <div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
                                                                            <img src="<%= img %>" alt="<%= name %>" height="150" width="90"/>
										<h4><%= name %></h4>
										<p>Price: Rs <%= price %></p>
                                                                                <p>Discount: Rs <%= discount %></p>
                                                                                <p>Quantity: <%= weight %> </p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2><%= name %></h2>
											<p>Price: Rs<%= price %></p>
                                                                                        <a href="cart.jsp?pid=<%=pid%>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
                                                                            
                                                                            <li><a href="productDetails.jsp?pid=<%=pid%>"><i class="fa fa-plus-square"></i>View Product</a></li>
                                                                            <li><a href="wishlist.jsp?pid=<%=pid%>"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
									</ul>
								</div>
							</div> 
                                                    </div>