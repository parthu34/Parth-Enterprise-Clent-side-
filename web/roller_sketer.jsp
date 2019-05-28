<%-- 
    Document   : roller_sketer
    Created on : 28 Dec, 2017, 11:36:36 AM
    Author     : parth
--%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>ROLLER SKETER</title>
	<script src="jquery/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


        <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style_rs.css"> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
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


<header class="cd-header">
    <h1>ROLLER SKETER PRODUCTS</h1>
	</header>

	<main class="cd-main-content">
		<div class="cd-tab-filter-wrapper">
			<div class="cd-tab-filter">
				<ul class="cd-filters">
					<li class="placeholder"> 
						<a data-type="all" href="#0">All</a> <!-- selected option on mobile -->
					</li> 
					<li class="filter"><a class="selected" href="#0" data-type="all">ROLLER SKETER</a></li>
					
				</ul> <!-- cd-filters -->
			</div> <!-- cd-tab-filter -->
		</div> <!-- cd-tab-filter-wrapper -->
                <section class="cd-gallery">
                    <ul>
<%                                                        
                                                        
                                                           String data1=null;
                                                          try
                                                          {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/parth_enterprise?zeroDateTimeBehavior=convertToNull","root","");
                                                            Statement stm = con.createStatement();
                                                            String query="select *from rs_product where rs_product_status='In Stock'";
                                                            ResultSet rs=stm.executeQuery(query);
                                                            while(rs.next())
                                                            {
                                                      %>
                                                                    <%
                                                                        String data=rs.getString("File_Path");
                                                                            data1=data.substring(49);
                                                                           //out.println(data1);
                                                                            %>
                                                                            <li class="mix  <%= rs.getString("rs_product_brand")%> <%= rs.getString("rs_product_price_range")%>"><img src="img/gallery/<%= data1%>" alt="Image 1"height="200"width="300">
                                    <section class="p_data">
					<h2 class="price">&#8377; <%= rs.getString("rs_product_price")%></h2>
					<p class="des"><%= rs.getString("rs_product_name")%></p></a>
                                    <a href="rs_product_details.jsp?id=<%= rs.getInt("id")%>"><button class="btn">See Details</button></a>
					</section>
                                </li>
                                                                            <%	 }
                                                        con.close();
                                                        }
                                                          catch(Exception e)
                                                          {
                                                              out.println(e);
                                                          }
                                                      %>
		
                            
				
				<li class="gap"></li>
				<li class="gap"></li>
				<li class="gap"></li>
			</ul>
			<div class="cd-fail-message">No results found</div>
		</section> <!-- cd-gallery -->

		<div class="cd-filter">
			<form>
				<div class="cd-filter-block">
					<h4>Search</h4>
					
					<div class="cd-filter-content">
						<input type="search" placeholder="Try ROLLER SKETER...">
					</div> <!-- cd-filter-content -->
				</div> <!-- cd-filter-block -->

				

				<div class="cd-filter-block">
					<h4>Brands</h4>

					<ul class="cd-filter-content cd-filters list">
						<li>
							<input class="filter" data-filter=".STRAUSS" type="checkbox" id="checkbox1">
			    			<label class="checkbox-label" for="checkbox1">STRAUSS</label>
						</li>

						<li>
							<input class="filter" data-filter=".JASPO" type="checkbox" id="checkbox2">
							<label class="checkbox-label" for="checkbox2">JASPO</label>
						</li>

						<li>
							<input class="filter" data-filter=".DIXON" type="checkbox" id="checkbox3">
							<label class="checkbox-label" for="checkbox3">DIXON</label>
						</li>
						<li>
							<input class="filter" data-filter=".OXELO" type="checkbox" id="checkbox4">
							<label class="checkbox-label" for="checkbox4">OXELO</label>
						</li>

						<li>
							<input class="filter" data-filter=".COSCO" type="checkbox" id="checkbox5">
							<label class="checkbox-label" for="checkbox5">COSCO</label>
						</li>

						

					</ul> <!-- cd-filter-content -->
				</div> <!-- cd-filter-block -->

				<!--<div class="cd-filter-block">
					<h4>Select</h4>
					
					<div class="cd-filter-content">
						<div class="cd-select cd-filters">
							<select class="filter" name="selectThis" id="selectThis">
								<option value="">Choose an option</option>
								<option value=".option1">Option 1</option>
								<option value=".option2">Option 2</option>
								<option value=".option3">Option 3</option>
								<option value=".option4">Option 4</option>
							</select>
						</div> <!-- cd-select -->
					<!--</div> <!-- cd-filter-content -->
				<!--</div> <!-- cd-filter-block -->
			

				<div class="cd-filter-block">
					<h4>Price</h4>

					<ul class="cd-filter-content cd-filters list">
						<li>
							<input class="filter" data-filter="" type="radio" name="radioButton" id="radio1" checked>
							<label class="radio-label" for="radio1">All</label>
						</li>

						<li>
							<input class="filter" data-filter=".Under_500" type="radio" name="radioButton" id="price_radio2">
							<label class="radio-label" for="price_radio2">Under &#8377;500</label>
						</li>

						<li>
							<input class="filter" data-filter=".Under_1000" type="radio" name="radioButton" id="price_radio3">
							<label class="radio-label" for="price_radio3">Under &#8377;1000</label>
						</li>

						<li>
							<input class="filter" data-filter=".Between_1000_to_1500" type="radio" name="radioButton" id="price_radio4">
							<label class="radio-label" for="price_radio4">Between &#8377;1000 to &#8377;1500</label>
						</li>
					</ul> <!-- cd-filter-content -->
				</div> <!-- cd-filter-block -->
			</form>

			<a href="#0" class="cd-close">Close</a>
		</div> <!-- cd-filter -->

		<a href="#0" class="cd-filter-trigger">Filters</a>

	</main> <!-- cd-main-content -->


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
<script src="js/jquery-2.1.1.js"></script>
<script src="js/jquery.mixitup.min.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->

</body>
</html>
