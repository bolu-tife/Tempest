<%-- 
    Document   : home.jsp
    Created on : 27-Dec-2019, 13:18:14
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

                        <li class="nav-item active">
                            <a class="nav-link" href="home.jsp" >Home <span class="sr-only">(current)</span></a>
                        </li>
                        
                        <li class="nav-item">
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



        <div class="container" style="padding: 150px;">


            
            <p></p>
            <h2 style="color: #64a19d;">Emergency Preparation</h2>
            <p>Disasters and emergencies can happen anytime and anywhere. They can happen
                without warning, leaving you with limited time to respond. Learn how to protect
                yourself and cope with disaster by planning ahead. Ensure you have the correct
                supplies, contact information and escape routes prepared ahead of time. By
                having these supplies and plans in place, you will be able to react appropriately
                and survive
            </p>
            <h3 style="color: #64a19d;">Importance</h3>
            <p>
                As we have learned with recent hurricanes and other natural disasters,
                preparation is the best method of coping with devastating long-term effects.
                Threats of bioterrorism, disease outbreak and even fire or other emergencies that
                could greatly impact you and your community. After a disaster, local officials and
                relief workers may not be able to reach everyone immediately. Depending on the
                disaster, assistance could be days or weeks away. Would your family be prepared
                to cope with an emergency until help arrives?
            </p>
            <h3 style="color: #64a19d;">How To Prepare</h3>
            <p>

                Your family will cope best in an emergency by preparing for the disaster before it
                strikes. One way to prepare is by assembling a disaster supply kit. Once a disaster
                strikes, you won’t have time to shop or search around for supplies. However, if you
                have gathered these supplies in advance, your family can endure an evacuation or
                home confinement.
            </p>
        </div>  
        <p></p>
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
