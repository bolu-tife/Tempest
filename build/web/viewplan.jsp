a<%-- 
    Document   : viewplan
    Created on : 29-Dec-2019, 23:53:49
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
       
        <link href="images/storm2.jpeg" rel="icon">
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
                <a class="navbar-brand js-scroll-trigger" href="#page-top" style="color: black;">Tempest: <small>The storm is coming</small></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item ">
                            <a class="nav-link" href="home.jsp" >Home <span class="sr-only">(current)</span></a>
                        </li>
                        
                        <li class="nav-item active ">
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

        <div class="container" style="padding: 100px;">
            <div class="py-5 text-center">
                
                <h2>Emergency Preparation Checklist</h2>
                <p class="lead" style="text-align: justify">
                    Make a plan today. Your family may not be together if a disaster strikes, so it is important to know which types of disasters could affect your area.  Know how you’ll contact one another and reconnect if separated. Establish a family meeting place that’s familiar and easy to find.
                </p>
            </div>
            <div class="row">
                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Plan</h4>
                    <form class="needs-validation" novalidate="" action="viewplan1.jsp">


                        <div class="col-md-6 mb-3">
                            <label for="familyname">Family Name</label>
                            <input type="text" class="form-control" id="familyname" name="familyname" placeholder="" value="" required="">
                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="familypassword">Password</label>
                            <input type="text" class="form-control" id="familypassword" placeholder="" name="familypassword" value="" required="">

                        </div>

                        <div class="col-md-6 mb-3">

                            <button class="btn btn-lg btn-primary btn-block" type="submit">View Plan</button>
                        </div>




                    </form>
                </div>
            </div>
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
