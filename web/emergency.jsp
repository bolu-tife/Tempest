<%-- 
    Document   : Emergency
    Created on : 28-Dec-2019, 18:11:39
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/storm2.jpeg">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!--        <link rel="stylesheet" href="newcss.css">-->
        <script src="js/bootstrap.min.js"></script>
        <link href="css/grayscalemin.css" rel="stylesheet">
        <link href="css/all.min.css" rel="stylesheet">
        <style>
            body{
                background-image: url(bg-main.jpg);
                /*<link rel="icon" href="emegerncypic.jpeg">*/
                /*background-image: url(emegerncypic.jpeg);*/
                background-repeat: no-repeat;
                background-position: center;
                
                background-size: cover;
               
               
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" >
            <div class="container" >
                <a class="navbar-brand js-scroll-trigger" href="#page-top"" >Tempest: <small>The storm is coming</small></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item ">
                            <a class="nav-link" href="home.jsp"  >Home <span class="sr-only">(current)</span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="plan.jsp">Plan</a>
                        </li>
                        <li class="nav-item active">
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

        <p></p>
         <p></p>
          <p></p>

        <div class="container" style="padding:50px;">
            <div class="py-5 text-center">
                <!--                <img class="d-block mx-auto mb-4" src="" alt="" width="72" height="72">-->
                <h2>It's an Emergency!</h2>
                <h3  class="lead" style="text-align: center">
                    <strong> Be at alert!</strong>
                </h3>
            </div>
            <div class="col-md-6 mb-3">
                <form action="emergency1.jsp" method="post" ">



                    <table  class='table' style="  border:none; ">
                        <thead>
                            <tr>
                                <th>&nbsp;</th>
                                <th>Yes</th>
                                <th>No</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td>Has items that can be blown away been secured? </td>
                                <td><input type="radio" name="secured" value="yes" required></td>
                                <td><input type="radio" name="secured" value="no" required></td>
                            </tr>
                            <tr>
                                <td>Are the roof gutters, down pipes or drains cleared?</td>
                                <td><input type="radio" name="cleared" value="yes" required ></td>
                                <td><input type="radio" name="cleared" value="no" required></td>
                            </tr>
                            <tr>
                                <td>Have the trees and branches been trimmed?</td>
                                <td><input type="radio" name="trimmed" value="yes" required></td>
                                <td><input type="radio" name="trimmed" value="no" required></td>
                            </tr>
                            <tr>
                                <td>Is there any damage on the roof that needs to be checked?</td>
                                <td><input type="radio" name="checked" value="yes" required></td>
                                <td><input type="radio" name="checked" value="no" required></td>
                            </tr>
                            <tr>
                                <td>Is the insurance policy current or expired?</td>
                                <td><input type="radio" name="expired" value="yes" required></td>
                                <td><input type="radio" name="expired" value="no" required></td>
                            </tr>
                            <tr>
                                <td>Has all the utilities in the home e.g gas and water mains been shutdown?</td>
                                <td><input type="radio" name="shut" value="yes" required></td>
                                <td><input type="radio" name="shut" value="no" required></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><button class="btn btn-primary btn-lg btn-block " type="submit">View Emergency Plan</button></td>
                            </tr>
                        </tbody>
                    </table>
                    
                </form>



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
