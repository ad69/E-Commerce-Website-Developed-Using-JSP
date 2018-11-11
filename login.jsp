<%-- 
    Document   : login
    Created on : Jun 10, 2015, 8:21:36 PM
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
						<h2>Login to your account</h2>
						<form action="/OnlineStoreProject/checkLogin.jsp">
							<input type="text" placeholder="User Id" name="log"/>
                                                        <input type="password" placeholder="Password" name="pass"/>
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">Login</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="ors">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User!! Click down to register</h2>
						<form action="register.jsp">
								<button type="submit" class="btn btn-default">Register Me</button>
						</form>
					</div><!--/sign up form-->
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