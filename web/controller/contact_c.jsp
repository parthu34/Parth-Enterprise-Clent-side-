<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
    </head>
    <body>
        
        <%  
            
            String name=request.getParameter("name");
                String email=request.getParameter("email");
            
            String phone=request.getParameter("phone");
            String message=request.getParameter("message");
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into contact_us values(null,'"+name+"','"+email+"','"+phone+"','"+message+"')";
               
                stm.executeUpdate(query);
                response.sendRedirect("../contact.jsp?mo=Your message successfully received.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>