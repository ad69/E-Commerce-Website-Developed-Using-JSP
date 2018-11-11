<%-- 
    Document   : register
    Created on : Jun 10, 2015, 8:22:02 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="header.jsp" %>

		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Register</h2>
                                                <form action="doRegister.jsp" method="post">
                                                        
                                                    <%
                                                    try
                                                    {
                                                    String uid=request.getParameter("id").toString();    
                                                    
                                                    %>
                                                    UserId*:
                                                    <%= uid %>
                                                    </br>
                                                    <%
                                                    }
                                                    catch(Exception e)
                                                    {
                                                        out.println(e);
                                                    }
                                                    %>    
                                                        
                                                        Password*: <input type="password" placeholder="Password" name="pass" /> </br>
                                                        First Name*: <input type="text" placeholder="First Name" name="fname"/> </br>
                                                        Last Name: <input type="text" placeholder="Last Name" name="lname"/> </br>
                                                        Address*: <input type="text" placeholder="Address" name="add"/> </br>
                                                        Phone Number1: <input type="number" placeholder="Phone No." name="phone"/> </br>
                                                        Mobile*: <input type="number" placeholder="Mobile" name="mob"/> </br>
                                                        Reference Email*: <input type="text" placeholder="Email on which we can send you your password" name="rid"/> </br>
							[Reference Email:Email on which we can send you your password,in case you forget]
                                                        </br>
                                                        [Field marked with * are compulsory]
                                                        <span>
								
							<button type="submit" class="btn btn-default">Register</button>
						</form>
					</div><!--/login form-->
				</div>
			  <div class="col-sm-1">
				  
				</div>
				<div class="col-sm-4"><div class="signup-form"><form action="register.jsp">
				</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</br>
        </br>
        </br>
	</br>
        </br>
        <%@include file="footer.jsp" %>