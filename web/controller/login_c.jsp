<%-- 
    Document   : login_c
    Created on : 18 Nov, 2017, 10:30:37 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <%
            
            
            String user_name = request.getParameter("user_name");
            String password = request.getParameter("password");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+user_name+"' and password='"+password+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                int result=0;
                
                while(rs.next())
                {
                    result=1;
                    break;
                }
                if(result==0)
                        {
                            response.sendRedirect("../login.jsp?mo=Username or Password is Wrong.");
                        }
                else if(result==1)
                {
                    response.sendRedirect("../sports.jsp");
                    session.setAttribute("user_name", user_name);
                }
                else
                {
                    response.sendRedirect("../login.jsp");
                }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
