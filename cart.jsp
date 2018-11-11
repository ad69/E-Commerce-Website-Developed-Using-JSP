<%-- 
    Document   : cart
    Created on : Jun 10, 2015, 8:25:30 PM
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
                                                        <td class="quantity">Quantity</br></td>
                                                        <td class="total_discount">Total Discount</br></td>
                                                        <td class="total_price">Total Price</br>(After Discount)</td>
                                                        <td></td>
						</tr>
					</thead>
					<tbody>
                                            <% double tprice=0.0; %>
						<tr>
							<td class="cart_product" >
                                                            
                                                                        <% 
                                                                
                                                                            try{
                                                                                //int order_id=101; //Testing
                                                                               // int pid=1;//Testing
                                                                                int pid=Integer.parseInt(request.getParameter("pid").toString());
                                                                                int uid=1;
                                                                                   // int uid=Integer.parseInt(request.getParameter("uid"));
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from products where pid="+pid+"");
                                                                               // java.sql.ResultSet r=s.executeQuery("select * from products where pid="+11+"");
                                                                                
                                                                                while(r.next())
                                                                                {   
                                                                                    String img=r.getString(11);
                                                                                    String name=r.getString(3);
                                                                                    int weight=r.getInt(4);
                                                                                    double price=r.getInt(5);
                                                                                    double discount=r.getInt(6);
                                                                                    
                                                                                %>
                                                                                  
                                                                                  
                                                                                <a href=""><img src="<%= img %>" alt="<%= name %>" width="75" height="75"></a>
                                                                       
							</td>
							
                                                        <td class="cart_description">
                                                             <scan>
								<h4><a href=""><%= name %></a></h4>
                                                                <h5><p>Web ID: <%= pid %></p>
                                                                <p>Weight: <%= weight %></p></h5>
                                                             </scan>
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
                                                        
                                                        
                                                        
                                                        <td class="cart_quantity">
								<div class="cart_quantity_button">
                                                                    <%
                                                                    int quantity=1;
                                                                    %>
                                                                    <input type="text" name="q" id="q" value="1" autocomplete="on" size="2"/>
								</div>
							</td>
							
                                                        
                                                        <td class="cart_total_disc">
                                                            <%  
                                                               // quantity=Integer.parseInt(request.getParameter("+q+"));
                                                               // out.println(quantity);
                                                                double total_discount=discount*quantity;
                                                            %>
                                                            <p><h4>Rs <%= total_discount %></h4></p>
							</td>
                                                        
                                                        <td class="cart_total">
                                                            <%
                                                                double total_price=(price*quantity)-total_discount;
                                                            %>
								<p class="cart_total_price">Rs <%= total_price %></p>
							</td>
                                                        
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
                                                               
							</td>
						</tr>
                                                
                                                                    
                                                <%
                                                        java.sql.PreparedStatement sp=c.prepareStatement("insert into cart values (?,?,?,?,?,?,?)");
                                                                    sp.setInt(2,pid);
                                                                    sp.setInt(3,quantity);
                                                                    sp.setDouble(4,discount);
                                                                    sp.setDouble(5,total_price);
                                                                    sp.setInt(6,uid);
                                                                    
                                                                    tprice=tprice+total_price; //total price of all objects with quantity
                                                                    out.println(tprice);
                                                                   
                                                                                    
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

	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>What would you like to do next?</h3>
				<p>Choose the address you want to deliver the shipments. </p>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="radio">
								<label>Address:</label>
                                                                <% 
                                                                
                                                                            try{
                                                                                //String id="rt";//Testing
                                                                                int uid=Integer.parseInt(request.getParameter("uid"));
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet r=s.executeQuery("select * from users where userid='"+uid+"'");
                                                                                while(r.next())
                                                                                {
                                                                                    String add=r.getString(5);
                                                                                    
                                                                            %>
                                                                                  <%= add %>
                                                                                                                                                         
                                                                                 
                                                                                    
                                                                                 <%
                                                                                }
                                                                                }
                                                                                catch(Exception e)
                                                                                {
                                                                               out.println(e);
                                                                                 }
                                                                            
                                                                        %>
                                                                
							</li>
							<li>
								<input type="radio">
								<label>Other Address: </label> <input type="text" placeholder="" name="add2"/>
								<label></label>
							</li>
					    </ul>
						
						
						<a class="btn btn-default check_out" href="">Deliver Here</a></div>
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
                                                    <li>Cart Sub Total:<span> Rs <%= tprice %></span></li>
					
                                                    <% double tax=10; %>
                                                    <li>Tax:<span> Rs <%= tax %></span></li>
						
                                                    <% double shipping_cost=50.0; %>
                                                    <li>Shipping Cost:<span> Rs <%= shipping_cost%> </span></li>
						
                                                    <li>Total:<span> Rs <%= tprice+tax+shipping_cost %></span></li>
						</ul>
                                            <a class="btn btn-default update" href="shop.jsp">Shop More</a>
                                            <%--
                                            <a class="btn btn-default check_out" href="order.jsp?uid=<%=Integer.parseInt(request.getParameter("uid"))%>">Place Order-></a> 
                                            --%>
                                            <a class="btn btn-default check_out" href="order.jsp?uid=1">Place Order-></a>
					</div>
				</div>              
			</div>
		</div>
	</section><!--/#do_action-->

<%@include file="footer.jsp" %>