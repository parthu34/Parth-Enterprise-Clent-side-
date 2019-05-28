<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
    </head>
    <body>
        
        <%  
            if(request.getParameter("ck_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("ck_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into cricket_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
            else if(request.getParameter("ft_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("ft_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into football_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            

                          else if(request.getParameter("vl_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("vl_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into vollyball_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
              else if(request.getParameter("bdm_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("bdm_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into badminton_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
            else if(request.getParameter("bsk_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("bsk_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into basketball_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
            else if(request.getParameter("hky_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("hky_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into hockey_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
              else if(request.getParameter("rs_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("rs_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into roller_skater_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
            else if(request.getParameter("car_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("car_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into carrom_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
            else if(request.getParameter("che_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("che_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into chess_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
            else if(request.getParameter("sr_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("sr_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into skipping_ropes_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
               else if(request.getParameter("ss_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("ss_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into sport_shoes_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
            
               else if(request.getParameter("sep_product_id")!=null)
              {
            int product_id = Integer.parseInt(request.getParameter("sep_product_id"));
            String first_name=request.getParameter("first_name");
                String last_name=request.getParameter("last_name");
            
            String email = request.getParameter("email");
            
            String mobno=request.getParameter("mobno");
            String address=request.getParameter("address");
            String country=request.getParameter("country");
            
            String state=request.getParameter("state");
            String city=request.getParameter("city");
            String pincode=request.getParameter("pincode");
            
            
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="insert into strategy_order values(null,'"+product_id+"','"+first_name+"','"+last_name+"','"+email+"','"+mobno+"','"+address+"','"+country+"','"+state+"','"+city+"','"+pincode+"')";
               out.println(query);
                stm.executeUpdate(query);
                response.sendRedirect("../success.jsp?mo=You Order successfully recieved.");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
              }
        
        %>
        
        
    </body>
</html>