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
                                                                
                                                                            try
                                                                            {
                                                                                int oid=101; //Testing
                                                                                //int pid=1;//Testing
                                                                                //int caid=1;
                                                                                //int uid=1;
                                                                                int uid=Integer.parseInt(request.getParameter("uid"));
                                                                                //int oid=Integer.parseInt(request.getParameter("pid"));
                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
                                                                                java.sql.Statement s=c.createStatement();
                                                                                java.sql.ResultSet re=s.executeQuery("select * from orders where oid="+oid+" and uid="+uid+"");
                                                                                while(re.next())
                                                                                {
                                                                                java.sql.ResultSet res=s.executeQuery("select * from order_details where oid="+oid+"");
                                                                                while(res.next())
                                                                                {   
                                                                                    int pid=res.getInt(3);
                                                                                    {
                                                                                java.sql.ResultSet r=s.executeQuery("select * from products where pid="+pid+"");
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
                                                                                }
                                                                                    }
                                                                                }
                                                                                }}
                                                          
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

<section id="do_action"></section>
	<!--/#do_action-->
        
       

<%@include file="footer.jsp" %>



