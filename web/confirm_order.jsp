<%-- 
    Document   : place_order
    Created on : 29 Dec, 2017, 2:47:05 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place Order</title>
        <script src="jquery/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/order.css">
       
	
	
	
    </head>
    <body>
        
    <% String v=(String)session.getAttribute("user_name");
        if(v==null || v.equals(""))
        {
            response.sendRedirect("login.jsp");
        }
 %>
	<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        <ul class="nav navbar-nav">
            <li><a href="index.jsp"><img class="logo" src="img/logo2.png"><img class="logo1" src="img/logo4.png"></a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        <li class="dropdown mega-dropdown active">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories <span class="caret"></span></a>       
        <div class="dropdown-menu mega-dropdown-menu">
                    <div class="container-fluid">
                <!-- Tab panes -->
                        <div class="tab-content">
                          <div class="tab-pane active" id="teamsports">
                            <ul class="nav-list list-inline">
                                <li><a href="cricket.jsp"><img src="img/ck2.jpg" height="100" width="80"><span>Cricket Products</span></a></li>
                                <li><a href="basketball.jsp"><img src="img/bask.png"><span>Basketball</span></a></li>
                                <li><a href="vollyball.jsp"><img src="img/volly2.png" height="100" width="80"><span>Vollyball</span></a></li>
                                <li><a href="football.jsp"><img src="img/foot.png"><span>Football</span></a></li>
                                <li><a href="hockey.jsp"><img src="img/hk3.jpg" height="100" width="80"><span>Hockey</span></a></li>
                            </ul>
                          </div>
                          <div class="tab-pane" id="indoor">
                            <ul class="nav-list list-inline">
                                <li><a href="carrom.jsp"><img src="img/crm2.jpg" height="100" width="130"><span>Carrom</span></a></li>
                                <li><a href="chess.jsp"><img src="img/chess3.jpg" height="100" width="130"><span>Chess</span></a></li>
                                <li><a href="skipping_ropes.jsp"><img src="img/skp1.jpg" height="100" width="130"><span>Skipping Ropes</span></a></li>                              
                            </ul>
                          </div>
                          <div class="tab-pane" id="outdoor">
                            <ul class="nav-list list-inline">
                                <li><a href="badminton.jsp"><img src="img/badm.jpg" height="100" width="100"><span>Badminton</span></a></li>
                                <li><a href="roller_sketer.jsp"><img src="img/sk.jpg" height="100" width="100"><span>Skatting</span></a></li>
                                
                                <li><a href="#"><img src="img/rr.jpg" height="100" width="100"><span>Rubber Ring</span></a></li>
                                
                            </ul>
                          </div>
                          <div class="tab-pane" id="strategy">
                            <ul class="nav-list list-inline">                                
                                <li><a href="strategy.jsp"><img src="img/gf.jpg" height="90" width="130"><span>Hammer Throw</span></a></li>
                                <li><a href="strategy.jsp"><img src="img/jt1.jpg" height="90" width="130"><span>Javelin Throw</span></a></li>
                                <li><a href="strategy.jsp"><img src="img/mt.jpg" height="90" width="130"><span>Men's Training</span></a></li>
                                <li><a href="strategy.jsp"><img src="img/wt.png" height="90" width="130"><span>Women's Training</span></a></li>
                            </ul>
                          </div>
                        </div>
                    </div>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                       <li class="active"><a href="#teamsports" role="tab" data-toggle="tab">Team Sports</a></li>
                       <li><a href="#indoor" role="tab" data-toggle="tab">Indoor Games</a></li>
                       <li><a href="#outdoor" role="tab" data-toggle="tab">Outdoor Games</a></li>
                       <li><a href="#strategy" role="tab" data-toggle="tab">Strategy Sports</a></li>
                    </ul>                    
        </div>        
      </li>
        </ul>
        
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <b><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <% 
                                                                out.println("Welcome "+v);
                  %><span class="caret"></span></a></b>
              <ul class="dropdown-menu" role="menu">
                <li><a href="view_profile.jsp">Profile</a></li>
                <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select email from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
                <li><a href="manage_order.jsp?user=<%=rs.getString("email")%>">Manage Orders</a></li>
                <%}
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
                <li class="divider"></li>
                <li><a href="logout.jsp">Logout</a></li>
                
              </ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
          <%      
              if(request.getParameter("ckt_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("ckt_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from ck_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="ck_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
  <%}%>    


          <%      
              if(request.getParameter("ft_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("ft_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from ft_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="ft_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
  <%}%> 
  
  
  <%      
              if(request.getParameter("vl_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("vl_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from ft_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="vl_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
  <%}%> 
  
  <%      
              if(request.getParameter("bdm_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("bdm_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from bdm_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="bdm_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>

  <%      
              if(request.getParameter("bsk_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("bsk_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from bsk_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="bsk_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>

<%      
              if(request.getParameter("hky_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("hky_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from hky_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="hky_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>

<%if(request.getParameter("rs_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("rs_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from rs_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="rs_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>

<%if(request.getParameter("car_id")!=null)
              {%>
          <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("car_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from car_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="car_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>

<%if(request.getParameter("che_id")!=null)
              {%>

              <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("che_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from che_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="che_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>

<%if(request.getParameter("sr_id")!=null)
              {%>

              <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("sr_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from sr_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="sr_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>    

<%if(request.getParameter("ss_id")!=null)
              {%>

              <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("ss_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from ss_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="ss_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>    

<%if(request.getParameter("sep_id")!=null)
              {%>

              <div class="row">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" role="form" method="post" action="controller/order.jsp">
        <fieldset>
<center><h2>
                                        
          <!-- Form Name -->
          <legend>Enter Your Shipping Address Details</legend></h2></center>
          
          <%
                                                            int id = Integer.parseInt(request.getParameter("sep_id"));
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from sep_product where id='"+id+"'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
        <!-- id input-->
          <div class="form-group">
            <label class="col-sm-2" for="textinput">Product_ID:</label>
            <div class="col-sm-10">
                <input type="text" name="sep_product_id" value="<%= rs.getInt("id")%>" class="form-control" readonly="">
            </div>
          </div>
         <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %> 
          <% try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                Statement stm = con.createStatement();
                
                String query="select *from register where user_name='"+v+"'";
                
                ResultSet rs = stm.executeQuery(query);
                
                
                
                while(rs.next())
                {%>
                    
                
          <!-- First Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">FirstName:</label>
            <div class="col-sm-10">
              <input type="text" name="first_name" class="form-control" value="<%=rs.getString("first_name")%>">
            </div>
          </div>
          
          <!-- Last Name input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">LastName:</label>
            <div class="col-sm-10">
              <input type="text" name="last_name" class="form-control" value="<%=rs.getString("last_name")%>">
            </div>
          </div>
          
          <!-- email input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email:</label>
            <div class="col-sm-10">
              <input type="text" name="email" class="form-control" value="<%=rs.getString("email")%>">
            </div>
          </div>
          
          <!-- Mobile Number input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Mobile:</label>
            <div class="col-sm-10">
              <input type="number" placeholder="+91 9725035880" name="mobno" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address:</label>
            <div class="col-sm-10">
              <input type="text" name="address" placeholder="Address" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <input type="text" name="city" placeholder="City" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
                <input type="text" name="state" placeholder="State" class="form-control">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Postcode</label>
            <div class="col-sm-4">
              <input type="text" name="pincode" placeholder="Post Code" class="form-control">
            </div>
          </div>



          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Country</label>
            <div class="col-sm-10">
              <input type="text" name="country" placeholder="Country" class="form-control">
            </div>
          </div>
<%}
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Countinue</button>
              </div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<%}%>    
  
            <!-- Footer -->
     <footer>
      <div class="container">
        <ul class="list-inline">
          <li class="list-inline-item">
            <a href="index.jsp">Home</a>
          </li>
          <li class="footer-menu-divider list-inline-item">&sdot;</li>
          <li class="list-inline-item">
            <a href="aboutus.jsp">About</a>
          </li>
         
          <li class="footer-menu-divider list-inline-item">&sdot;</li>
          <li class="list-inline-item">
            <a href="contact.jsp">Contact</a>
          </li>
        </ul>
        <p class="copyright text-muted small">Copyright &copy; PARTH ENTERPRISE 2017. All Rights Reserved</p>
      </div>
    </footer>
        
        <script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>    
    </body>
</html>
