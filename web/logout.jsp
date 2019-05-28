<%-- 
    Document   : logout
    Created on : 18 Nov, 2017, 10:18:26 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
        <%  //session.invalidate();
            session.removeValue("user_name");
            //
            out.println(session.getAttribute("data"));
            response.sendRedirect("login.jsp");
                %>
    </body>
</html>
