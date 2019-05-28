<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
    </head>
    <body>
        <% String v=(String)session.getAttribute("user_name");%>
        <%  
            
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String gender=request.getParameter("gender");
            String age=request.getParameter("age");
            String user_name=request.getParameter("user_name");
            String email = request.getParameter("email");
            
            
            String password=request.getParameter("password");
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="update register set first_name='"+first_name+"',last_name='"+last_name+"',gender='"+gender+"',age='"+age+"',user_name='"+user_name+"',gender='"+gender+"',email='"+email+"',password='"+password+"' where user_name='"+v+"'";
               
                stm.executeUpdate(query);
                response.sendRedirect("../login.jsp?mo=You are successfully updated your profile.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>