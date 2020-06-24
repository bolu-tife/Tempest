<%-- 
    Document   : plan
    Created on : 13-Jan-2020, 11:49:40
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!--        <link rel="stylesheet" href="newcss.css">-->
        <script src="js/bootstrap.min.js"></script>
        <link href="css/grayscalemin.css" rel="stylesheet">
        <link href="css/all.min.css" rel="stylesheet">


    </head>
    <body id="page-top" style="background-image: url(bg-main.jpg); background-repeat: no-repeat; background-position: center; background-size: cover;" >


        <nav class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top" style="color: black;">Tempest</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item ">
                            <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <!--          <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Plan
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                                    <a class="dropdown-item" href="#">Make a Plan</a>
                                                    <a class="dropdown-item" href="#">View</a>
                                                    
                                                </div>
                                            </li>-->
                        <li class="nav-item active">
                            <a class="nav-link" href="plan.jsp">Plan</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="emergency.jsp">Emergency</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="kit.jsp">Emergency Kit</a>
                        </li>
                        <li>
                            <a href="signout.jsp" class="btn btn-primary js-scroll-trigger" style="margin:1rem; line-height: 1px">Sign Out</a>
                        </li>
                    </ul>
                </div>
            </div>


        </nav>
        <div class="container">
        <form style="padding: 150px;" class="form-signin"  method="post">
        
        <div class="text-center mb-4">


<!--            <h1 style="padding: 30px;">Tempest</h1>-->



            <h2 style="color: #64a19d;">Plan</h2
            >
            <br>
            <p>

                Your family will cope best in an emergency by preparing for the disaster before it
                strikes. One way to prepare is by assembling a disaster supply kit. Once a disaster
                strikes, you won’t have time to shop or search around for supplies. However, if you
                have gathered these supplies in advance, your family can endure an evacuation or
                home confinement.
            </p>

        </div>
            <div style="text-align: center">
        <a href="createplan.jsp" class="btn btn-primary js-scroll-trigger">Make a Plan</a>
        <a href="viewplan.jsp" class="btn btn-primary js-scroll-trigger">View a Plan</a>
<!--        <a href="emergencyview.jsp" class="btn btn-primary js-scroll-trigger">View emergency record</a>-->
            </div>

        </form>
        </div>


p></p>
        <p></p>
        <p></p>
        <section class="contact-section bg-black">
            <div class="container">

                <div class="row">

                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4">
                                <div class="small text-black-50" >123 Example Street, London</div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4">
                                <div class="small text-black-50">
                                    <a href="https://mail.google.com/mail/u/0/#inbox">hello@example.com</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Phone</h4>
                                <hr class="my-4">
                                <div class="small text-black-50">+234 123 456</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="social d-flex justify-content-center">
                    <a href="https://twitter.com/" class="mx-2">
                        <i class="">T</i>
                    </a>
                    <a href="https://facebook.com/" class="mx-2">
                        <i class="">F</i>
                    </a>
                    <a href="https://mail.google.com/mail/u/0/#inbox" class="mx-2">
                        <i class="">E</i>
                    </a>
                </div>

            </div>
        </section>



    </body>
</html>
