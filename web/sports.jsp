<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <title>Sports Products</title>
  <!-- Bootstrap core CSS -->
    <script src="jquery/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


        <!-- Custom styles for this template -->
    <link href="css/sp.css" rel="stylesheet">
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


                                                       
<section class="intro">
  <div class="container">
    <div class="row">
      <!--<div class="col-md-12">
          <div class="sheader">
             <span class="headertitle">Search Sports Products</span>
             <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-default" type="button">Go!</button>
              </span>
            </div>
          </div>
      </div>-->
      

<section class="show_products">
  <div class="container">
    <div class="row">
  <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/ckt2.jpg" alt="">
        <div class="overlay">
           <h2>Cricket Eqipments</h2>
           <a class="info" href="cricket.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/ft.jpeg" alt="">
        <div class="overlay">
           <h2>Football</h2>
           <a class="info" href="football.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/volly1.jpg" alt="">
        <div class="overlay">
           <h2>Vollyball</h2>
           <a class="info" href="vollyball.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/bm1.jpeg" alt="">
        <div class="overlay">
           <h2>Badminton</h2>
           <a class="info" href="badminton.jsp">Get it here</a>
        </div>
    </div>
</div>
</div>

<div class="row">
  <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/bs.jpg" alt="">
        <div class="overlay">
           <h2>Basketball</h2>
           <a class="info" href="basketball.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/hk1.jpg" alt="">
        <div class="overlay">
           <h2>Hockey</h2>
           <a class="info" href="hockey.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/rs.jpg" alt="">
        <div class="overlay">
           <h2>Roller Skater</h2>
           <a class="info" href="roller_sketer.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/crm1.jpg" alt="">
        <div class="overlay">
           <h2>Carrom</h2>
           <a class="info" href="carrom.jsp">Get it here</a>
        </div>
    </div>
</div>
</div>

<div class="row">
  <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/chess2.jpg" alt="">
        <div class="overlay">
           <h2>Chess</h2>
           <a class="info" href="chess.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/sr.jpg" alt="">
        <div class="overlay">
           <h2>Skipping Ropes</h2>
           <a class="info" href="skipping_ropes.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/shoe1.jpg" alt="">
        <div class="overlay">
           <h2>Sports Shoes</h2>
           <a class="info" href="sports_shoes.jsp">Get it here</a>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="img/jt.jpg" alt="">
        <div class="overlay">
           <h2>Strategy Game Equipments</h2>
           <a class="info" href="strategy.jsp">Get it here</a>
        </div>
    </div>
</div>
</div>
</div>
</section>
</div>
  </div>
</section>

<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>
                  <br/><br/>
                    <center><b>Best Selling Products</b></center></h3>
                    <br/><br/>
            </div>

            <div class="col-md-3">
                <!-- Controls -->
                <br/><br/>
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            
            
            <div class="carousel-inner">
                <div class="item active">
                    <div class="row">
                        <%
                String data1=null;
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from ck_product where ck_product_status='In Stock' LIMIT 4";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            
                                                            
                                                            while(rs.next())
                                                            {
                                                      %>
                                                                    <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>  
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="img/gallery/<%= data1%>" class="img-responsive" alt="a"  />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h4>
                                                <%= rs.getString("ck_product_name")%></h4>
                                            <h4 class="price-text-color">
                                                &#8377;<%= rs.getString("ck_product_price")%></h4>
                                        </div>
                                        
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="confirm_order.jsp?ckt_id=<%= rs.getInt("id")%>" class="hidden-sm">Place Order</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="ck_product_details.jsp?id=<%= rs.getInt("id")%>">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%  
                             }                          
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %>

                    </div>
                </div>
                <div class="item">
                    <div class="row">
                        <%
                
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from ft_product where ft_product_status='In Stock' LIMIT 4";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            
                                                            
                                                            while(rs.next())
                                                            {
                                                      %>
                                                                    <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>  
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="img/gallery/<%= data1%>" class="img-responsive" alt="a"  />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h4>
                                                <%= rs.getString("ft_product_name")%></h4>
                                            <h4 class="price-text-color">
                                                &#8377;<%= rs.getString("ft_product_price")%></h4>
                                        </div>
                                        
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="confirm_order.jsp?ft_id=<%= rs.getInt("id")%>" class="hidden-sm">Place Order</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="ft_product_details.jsp?id=<%= rs.getInt("id")%>">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%  
                             }                          
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %>
                    </div>
                </div>

                <div class="item">
                    <div class="row">
                         <%
                
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from vl_product where vl_product_status='In Stock' LIMIT 4";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            
                                                            
                                                            while(rs.next())
                                                            {
                                                      %>
                                                                    <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>  
                        <div class="col-sm-3">
                            <div class="col-item">
                                <div class="photo">
                                    <img src="img/gallery/<%= data1%>" class="img-responsive" alt="a"  />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h4>
                                                <%= rs.getString("vl_product_name")%></h4>
                                            <h4 class="price-text-color">
                                                &#8377;<%= rs.getString("vl_product_price")%></h4>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%  
                             }                          
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>



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