<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PARTH ENTERPRISE</title>
     <script src="jquery/jquery.js"></script>

    <!-- Bootstrap core CSS -->
    
    <!-- Bootstrap core CSS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

   

    <!-- Custom fonts for this template -->
    

    <!-- Custom styles for this template -->
    <link href="css/pe_land.css" rel="stylesheet">

  </head>

  <body>
      
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
        
        </ul>
        <ul class="nav navbar-nav navbar-right">
        <% String v=(String)session.getAttribute("user_name");
        if(v==null || v.equals(""))
        {%>
            <li><a href="login.jsp">Log In/Register</a></li>
        <%}
        else
        {%>
            <li class="dropdown">
                <b><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <% 
                                                                out.println("Welcome "+v);
                  %><span class="caret"></span></a></b>
              <ul class="dropdown-menu" role="menu">
                <li><a href="view_profile.jsp">Profile</a></li>
                <li><a href="#">Manage Orders</a></li>
                <li class="divider"></li>
                <li><a href="logout.jsp">Logout</a></li>
        <%}%>
            
        
              </ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

    <!-- Header -->
    <header class="intro-header">
      <div class="container">
        <div class="intro-message">
          <h1>PARTH ENTERPRISE</h1>
          <h3>Buy Awesome Sports Products From us.</h3>
          <hr class="intro-divider">
          <ul class="list-inline intro-social-buttons">
              <center>
            <li class="list-inline-item">
              <a href="sports.jsp" class="btn btn-primary btn-large">
                <!--<i class="fa fa-twitter fa-fw"></i>-->
                <span class="network-name">Click here to enter</span>
              </a>
            </li>
              </center>
          </ul>
        </div>
      </div>
    </header>

    
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
