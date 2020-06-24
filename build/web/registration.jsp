<%-- 
    Document   : registration
    Created on : 06-Jan-2020, 22:26:37
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="newcss.css">
        <script src="js/bootstrap.min.js"></script>
        <link href="css/grayscalemin.css" rel="stylesheet">
        <link href="css/all.min.css" rel="stylesheet">-->
<!--        
  <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">-->
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
      <a class="navbar-brand js-scroll-trigger" href="#index.html" style="color: black;">Tempest</a>
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
        <form class="form-signin" action="registration1.jsp" method="post">
            
            <div></div>
        <p></p>
         <p></p>
            <div class="text-center mb-4">
                <!--        <img class="mb-4" src="" alt="" width="72" height="72">-->
                <h1 >Tempest</h1>
                <p>Disasters and emergencies can happen anytime and anywhere. They can happen without warning, leaving you with limited time to respond. Learn how to protect yourself and cope with disaster by planning ahead. </p>

                
            </div>

            <div class="form-label-group">
                <input type="text" id="regfirstname" class="form-control" name="regfirstname" placeholder="Firstname" autofocus="" required>
                <label for="regfirstname">Firstname</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="reglastname" class="form-control" name="reglastname" placeholder="Lastname" autofocus="" required>
                <label for="reglastname">Lastname</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="regusername" class="form-control" name="regusername" placeholder="Username" autofocus="" required>
                <label for="regusername">Username</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="regnumber" class="form-control" name="regnumber" placeholder="Phonenumber" autofocus="" required>
                <label for="regnumber">Phone Number</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="regmail" class="form-control" name="regmail" placeholder="Email" autofocus="" required>
                <label for="inputname">Email</label>
            </div>


            <div class="form-label-group">
                <input type="password" id="regpassword" class="form-control" name="regpassword" placeholder="Password" required="">
                <label for="regpassword">Password</label>
            </div>


            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
            <div>
                <p>Already have an account? <a href="login1.jsp" >Login</a></p>
            </div>

        </form>

    </body>
</html>
