<%-- 
    Document   : session
    Created on : Jun 20, 2015, 2:42:34 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CACHE</title>
    </head>
    <body>
        <%
            //String uid="1";
        String uid = request.getParameter("uid");
        if(uid!=null)
        {   
            session.setAttribute("uid",uid);
            response.sendRedirect("account.jsp?uid");

        }
        else{
            response.sendRedirect("404session.jsp?ms=Session Expired! Try Again");
        }
    %>

    </body>
</html>
