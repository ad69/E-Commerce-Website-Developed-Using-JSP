<%-- 
    Document   : change_password
    Created on : Jun 18, 2015, 1:55:41 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>

<div class="space">
    </br>
    </br>
    </br>
    
</div>


		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Enter new password:</h2>
                                                <form action="change_password_in_db.jsp">
                                                    <input type="password" placeholder="New Password" name="pass"/>
							<%
                                                            try
                                                            {
                                                                request.getParameter("uid");
                                                                response.sendRedirect("change_password_in_db.jsp?uid");
                                                            
                                                        %>
                                                            
                                                        <button type="submit" class="btn btn-default" value="uid">Change</button>
						</form>
                                                            <%
                                                            }
                                                            catch(Exception e)
                                                            {
                                                                response.sendRedirect("404.jsp");
                                                            }
                                                        %>
					</div><!--/login form-->
				</div>
				
			</div>
		</div>
	
<div class="space">
    </br>    
    </br>    
    </br>    
    </br>    
    </br>    
    </br>    
    </br>    
</div>
        <%@include file="footer.jsp" %>