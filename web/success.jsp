<%-- 
    Document   : success
    Created on : 29 Dec, 2017, 9:40:08 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Page</title>
    </head>
    <body>
        <h1><% 
                                            String mo=request.getParameter("mo");
                                            if(mo!=null)
                                            {
                                            out.println(mo);
                                            }
                                        %>
                                        
                                        </h1>
                                        <h3><a href="sports.jsp">Click Here</a> to view more products</h3>
    </body>
</html>
