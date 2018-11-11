<%-- 
    Document   : del
    Created on : Jun 11, 2015, 8:45:09 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<script>
function validLogin(){
if (document.form.userName.value == ""){
alert ( "Please enter Login Name." );
document.form.userName.focus();
return false;
}
if (document.form.password.value == ""){
alert ( "Please enter password." );
document.form.password.focus();
return false;
}
alert ( "Welcome User" );
return true;
}
</script>
</head>
<body>
<form name="form" method="post" onsubmit="return validLogin();">
<table width="250px" border=0 style="background-color:ffeeff;">
<tr><td colspan=2 align="center" style="font-weight:bold;font-size:20pt;" align="center">User Login</td>
</tr>
<tr><td colspan=2>&nbsp;</td>
</tr>
<tr><td style="font-size:12pt;" align="center">Login Name:</td>
<td><input type="text" name="userName" value=""></td>
</tr>
<tr><td style="font-size:12pt;" align="center">Password:</td>
<td><input type="password" name="password" value=""></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="Submit" value="Login"></td>
</tr>
</table>
</form>
</body>
</html>
