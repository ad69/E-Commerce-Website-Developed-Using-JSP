<%-- 
    Document   : wishlist
    Created on : Jun 10, 2015, 8:25:18 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<section id="cart_items">
		<div class="container">
			
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</br></td>
							<td class="description"></br></td>
							<td class="price">Price</br></td>
							<td class="discount">Discount</br></td>
                                                        <td class="discounted_price">Discounted</br>Price</td>
                                                        <td class="move_to_cart">Move To Cart</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="cart_product" >
                                                            
                                                                        <% 
                                                                
                                                                            try{
                                                                                int order_id=101; //Testing
                                                                                int id=10;//Testing
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from products where pid="+id+"");
                                                                                while(r.next())
                                                                                {
                                                                                    String img=r.getString(11);
                                                                                    String name=r.getString(3);
                                                                                    int weight=r.getInt(4);
                                                                                    double price=r.getInt(5);
                                                                                    double discount=r.getInt(6);
                                                                                    
                                                                                %>
                                                                                  
                                                                                
                                                                                <a href=""><img src="<%= img %>" alt="<%= name %>"></a>
                                                                       
							</td>
							
                                                        <td class="cart_description">
								<h4><a href=""><%= name %></a></h4>
                                                                <h5><p>Web ID: <%= id %></p>
                                                                <p>Weight: <%= weight %></p></h5>
                                                                
							</td>
							
                                                        <td class="cart_price">
                                                            <h4><p>Rs <%= price %></p>
							</td>
							
                                                         <td class="cart_disc">
                                                             <p><h4>Rs <%= discount %></h4></p>
							</td>
                                                        
                                                        <td class="cart_disc_price">
                                                             <p><h4>Rs 
                                                            <% 
                                                             double dprice=price-discount;
                                                             %>
                                                             <%= dprice %></h4></p>
							</td>
                                                        
							<td class="cart_delete">
                                                            <form action="cart.jsp">
                                                                <button type="submit" class="btn btn-default" value="" name="<%= id %>"> Move To Cart </button> 
                                                            </form>
                                                            
							</td>
						</tr>
                                                
                                                <%
                                                        java.sql.PreparedStatement sp=c.prepareStatement("insert into wishlist values (?,?,?,?,?)");
                                                                    sp.setInt(2,id);
                                                                    sp.setDouble(3,price);
                                                                    sp.setDouble(4,discount);
                                                                    sp.setDouble(5,dprice);

                                                                                }
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                               out.println(e);
                                                                                 }
                                                                            

                                                
                                                                            
                                                                        %>
                                                
                                                
                                                

					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->

        
        </br>
        </br>
<%@include file="footer.jsp" %>