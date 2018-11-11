<%-- 

Document   : checkAvailabilityOfUserId
    Created on : Jun 11, 2015, 4:13:52 PM
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
             try
         {
             
            int f=0;
            String id=request.getParameter("userid").toString();
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection c=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/store","root","root");
            java.sql.Statement s=c.createStatement();
            java.sql.ResultSet r=s.executeQuery("select userid from users where userid='"+id+"' ");
            if(r.first()==false)
            {   
                request.getRequestDispatcher("userIdAvailable.jsp?id="+id).forward(request, response);   //User Id  Available
                    
            }
                
            else
            {
                
                request.getRequestDispatcher("register.jsp").forward(request, response); //User Id Not Available
                
            }
                }
            catch(Exception e)
            {
                System.out.println(e);
            }
                
        %>
    </body>
</html>
