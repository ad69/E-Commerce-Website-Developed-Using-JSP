<%-- 
    Document   : doRegister
    Created on : Jun 11, 2015, 4:06:42 PM
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
            String u=request.getParameter("uid").toString();
            String p=request.getParameter("pass").toString();
            String f=request.getParameter("fname").toString();
            String l=request.getParameter("lname").toString();
            String a=request.getParameter("add").toString();
            String ph=request.getParameter("phone").toString();
            String m=request.getParameter("mob").toString();
            String r=request.getParameter("rid").toString();
            java.util.Date d=new java.util.Date();
            String ds=d.toString();
            
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
            java.sql.PreparedStatement s=c.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?)");
            s.setString(2,f);
            s.setString(3,l);
            s.setString(4,p);
            s.setString(5,a);
            s.setInt(6, Integer.parseInt(ph));
            s.setInt(7,Integer.parseInt(m));
            s.setString(8,ds);
            s.setString(9,u);
            s.setString(10,r);
%>
    </body>
</html>
