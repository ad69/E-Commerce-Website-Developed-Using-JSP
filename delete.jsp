<%--
Document   : checkLogin
    Created on : Jun 10, 2015, 10:48:54 PM
    Author     : sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("uid")!=null){
            {
            
            String l=request.getParameter("log").toString();
            String p=request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
            java.sql.Statement s=c.createStatement();
            java.sql.ResultSet r=s.executeQuery("select * from users where userid='"+l+"' and password='"+p+"'");
            if(r.next())
            {   
                int id=r.getInt(1);
                request.getRequestDispatcher("session.jsp"+id).forward(request, response);
                
            }
            else
            {
                request.getRequestDispatcher("404.jsp").forward(request, response);
                
            }
            }
            
        %>
    </body>
</html>
