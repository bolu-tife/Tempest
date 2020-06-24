<%-- 
    Document   : login1
    Created on : 06-Jan-2020, 00:09:01
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="newcss.css">
        <script src="js/bootstrap.min.js"></script>
        <link href="css/grayscalemin.css" rel="stylesheet">
        <link href="css/all.min.css" rel="stylesheet">

    </head>
    <body style="background-image: url(bg-masthead.jpg);">
        
         <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="index.html" style="color: black;">Tempest</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          
          
          <li class="nav-item">
            <a href="login1.jsp" class="btn btn-primary js-scroll-trigger" style="margin:1rem; line-height: 1px"  >Log in</a>
          </li>
          <li>
              <a href="registration.jsp" class="btn btn-primary js-scroll-trigger" style="margin:1rem; line-height: 1px">Sign Up</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
        <div></div>
        <p></p>
         <p></p>

        <form class="form-signin" action="verification.jsp" method="post">
            <div class="text-center mb-4">
                <!--        <img class="mb-4" src="" alt="" width="72" height="72">-->
                <h1 class="h1 mb-3 font-weight-normal">Tempest</h1>

                <p>A storm is coming, Be Prepared!</p>
            </div>
            

            <div class="form-label-group">
                <input type="text" id="inputname" class="form-control" name="regusername" placeholder="Username" autofocus="" required>
                <label for="inputname">Username</label>
            </div>

            <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" name="regpassword" placeholder="Password" required="">
                <label for="inputPassword">Password</label>
            </div>


            <button class="btn btn-lg btn-primary btn-block" style="text-align: center;" type="submit">Sign in</button>
            <div>
                <p>Don't have an account? <a href="registration.jsp" >Sign up</a></p>
            </div>
        </form>

    </body>
</html>
