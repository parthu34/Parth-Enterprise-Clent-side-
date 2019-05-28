<%-- 
    Document   : manage_order
    Created on : 30 Dec, 2017, 9:21:30 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Order Page</title>
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
        
        <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
                                            <center><h2><i class="halflings-icon white user"></i><span class="break"></span>Your Order Details</h2></center>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           String data1=null;
                                                           String email = request.getParameter("user");
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_ckt_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("ck_product_name")%></td>
                                                         <td><%= rs.getString("ck_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                         <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_ft_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("ft_product_name")%></td>
                                                         <td><%= rs.getString("ft_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                        <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_vl_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("vl_product_name")%></td>
                                                         <td><%= rs.getString("vl_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
          
                        
                        <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_bdm_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("bdm_product_name")%></td>
                                                         <td><%= rs.getString("bdm_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                        
                                                <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_bsk_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("bsk_product_name")%></td>
                                                         <td><%= rs.getString("bsk_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                         <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_hky_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("hky_product_name")%></td>
                                                         <td><%= rs.getString("hky_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                         <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_rs_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("rs_product_name")%></td>
                                                         <td><%= rs.getString("rs_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                                         <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_car_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("car_product_name")%></td>
                                                         <td><%= rs.getString("car_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                                                                 <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_che_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("che_product_name")%></td>
                                                         <td><%= rs.getString("che_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

                        <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_sr_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("sr_product_name")%></td>
                                                         <td><%= rs.getString("sr_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                        <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_ss_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("ss_product_name")%></td>
                                                         <td><%= rs.getString("ss_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
                        <div class="row-fluid sortable">		
				<div class="box span12">
					
					<div class="box-content">
                                            
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  
						  <tbody>
                                                       
                                                              
                                                      <%
                                                           
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from  view_sep_order where email='"+email+"'";
                                                            
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                      <thead>
							  <tr>
                                                                <th>Order ID</th>
								  <th>Product ID</th>
                                                                  <th>Product Image</th>
                                                                  <th>Product Name</th>
                                                                  <th>Product Price</th>
								  
								  <th>Email</th>
								  <th>Mobile Number</th>
                                                                  <th>Address</th>
                                                                  <th>Order Status</th>
                                                                  
							  </tr>
						  </thead>   
                                                      <tr>
                                                          <td><%= rs.getInt("order_id")%></td>
                                                          <td><%= rs.getInt("product_id")%></td>
                                                          <td class="center">  
                                                              <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                            <img src="img/gallery/<%= data1%>" alt="Sample Image 13" width="150" height="150" />
                                                                            </td>
                                                          <td><%= rs.getString("sep_product_name")%></td>
                                                         <td><%= rs.getString("sep_product_price")%></td>
                                                         <td><%= rs.getString("email")%></td>
                                                         <td><%= rs.getString("mobno")%></td>
                                                         <td><%= rs.getString("address")%></td>
                                                         <td class="center">
									<span class="label label-success">Received</span>
								</td>
                                                      
						<%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                          
                                                          %>
                                                                            
                                                      
                                                      </tr>
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
                        
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
