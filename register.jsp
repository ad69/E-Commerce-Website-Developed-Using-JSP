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
                                                <form action="checkAvailabilityOfUserId.jsp">
                                                    
                                                    User Id : <input type="text" placeholder="User Id" name="userid"/> </br>                                                    </br>
                                                    
                                                    <button type="submit" class="btn btn-default">Check Availability Of User Id</button>
                                                        
                                                        	
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