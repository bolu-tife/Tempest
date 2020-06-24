<%-- 
    Document   : newjsp
    Created on : 28-Dec-2019, 01:23:18
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="images/storm2.jpeg">
       
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


        <div class="container" style="padding: 70px">
            <div class="py-5 text-center">
                
                <h2>Emergency Preparation Checklist</h2>
                <p class="lead" style="text-align: justify">
                    Make a plan today. Your family may not be together if a disaster strikes, so it is important to know which types of disasters could affect your area.  Know how you’ll contact one another and reconnect if separated. Establish a family meeting place that’s familiar and easy to find.
                </p>
            </div>
            <div class="row">
                <div class="col-md-8 order-md-1">
                    <h4 class="mb-3">Local Contact</h4>
                    <form class="needs-validation" novalidate="" action="newjsp1.jsp" method="post">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="localname">Name</label>
                                <input type="text" class="form-control" name="localname" id="localname" placeholder="" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="localno">Phone Number</label>
                                <input type="text" class="form-control" name="localno" id="localno" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="localmail">Email <span class="text-muted"></span></label>
                            <input type="email" class="form-control" id="localmail" name="localmail" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="localadd">Address</label>
                            <input type="text" class="form-control" id="localadd" name="localadd" placeholder="00 Streetname St" required="">

                        </div>

                        <div class="mb-3">
                            <label for="localadd2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="localadd2" name="localadd2" placeholder="City, Country">
                        </div>

                        <hr class="mb-4">

                        <h4 class="mb-3">Out of State Contact</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="outname">Name</label>
                                <input type="text" class="form-control" id="outname" name="outname" placeholder="" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="outoo">Phone Number</label>
                                <input type="text" class="form-control" id="outno" name="outno" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="outmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="outmail" name="outmail" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="outadd">Address</label>
                            <input type="text" class="form-control" id="outadd" name="outadd" placeholder="00 Streetname St" required="">

                        </div>

                        <div class="mb-3">
                            <label for="outadd2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="outadd2" name="outadd2" placeholder="City, Country">
                        </div>


                        <hr class="mb-4">

                        <h4 class="mb-3">Nearest Relative</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="relname">Name</label>
                                <input type="text" class="form-control" id="relname" name="relname" placeholder="" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="relno">Phone Number</label>
                                <input type="text" class="form-control" id="relno" name="relno" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="relmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="relmail" name="relmail" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="reladd">Address</label>
                            <input type="text" class="form-control" id="reladd" name="reladd" placeholder="00 Streetname St" required="">

                        </div>

                        <div class="mb-3">
                            <label for="reladd2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="reladd2" name="reladd2" placeholder="City, Country">
                        </div>



                        <hr class="mb-4">

                        <h4 class="mb-3">Family Contact</h4>
                        <h6 >Father</h6>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="fname">Name</label>
                                <input type="text" class="form-control" id="fname" placeholder="" name="fname" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="fno">Phone Number</label>
                                <input type="text" class="form-control" id="fno" placeholder="" name="fno" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="fmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="fmail" name="fmail" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <br>
                        <h6 >Mother</h6>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="mname">Name</label>
                                <input type="text" class="form-control" id="mname" name="mname" placeholder="" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="mno">Phone Number</label>
                                <input type="text" class="form-control" id="mno" name="mno" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="mmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="mmail" name="mmail" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>


                        <br>
                        <h6 >Other</h6>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="oname">Name</label>
                                <input type="text" class="form-control" id="oname" name="oname" placeholder="" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="ono">Phone Number</label>
                                <input type="text" class="form-control" id="ono" name="ono" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="omail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="omail" name="omail" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <hr class="mb-4">

                        <h4 class="mb-3">Emergency Contact</h4>


                        <div class="mb-3">
                            <label for="police">Police</label>
                            <input type="text" class="form-control" id="police" name="police" placeholder="" required="">

                        </div>



                        <div class="mb-3">
                            <label for="fire">Fire</label>
                            <input type="text" class="form-control" id="fire" name="fire" placeholder="" required="">

                        </div>

                        <div class="mb-3">
                            <label for="hospital">Hospital</label>
                            <input type="text" class="form-control" id="hospital" name="hospital" placeholder="" required="">

                        </div>


                        <hr class="mb-4">

                        <h4 class="mb-3">Family Physician</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="phyname">Name</label>
                                <input type="text" class="form-control" id="phyname" name="phyname" placeholder="" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="phyno">Phone Number</label>
                                <input type="text" class="form-control" id="phyno" name="phyno" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="phymail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="phymail" name="phymail" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="phyname2">Name</label>
                                <input type="text" class="form-control" id="phyname2" name="phyname2" placeholder="" value="" required="">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="phyno2">Phone Number</label>
                                <input type="text" class="form-control" id="phyno2" name="phyno2" placeholder="" value="" required="">
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="phymail2">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="phymail2" name="phymail2" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <hr class="mb-4">
                        <h4 class="mb-3">Reunion Location</h4>
                         <div class="mb-3">
                            <label for="reunionclose">Right Outside Your Residence</label>
                            <textarea class="form-control" id="reunionclose" name="reunionclose" rows="3" cols="80"></textarea>
                           
                        </div>
                        <div class="mb-3">
                            <label for="reunionfar">Away from the neighbourhood, in case you cannot return home</label>
                            <textarea class="form-control" id="reunionfar" name="reunionfar" rows="3" cols="80"></textarea>
                           
                        </div>
                        
                        <div class="mb-3">
                            <label for="reunionadd">Address</label>
                            <input type="text" class="form-control" name="reunionadd" id="reunionadd" placeholder="" required="">

                        </div>
                        <div class="mb-3">
                            <label for="reunionphone">Phone Number</label>
                            <input type="text" class="form-control" name="reunionphone" id="reunionphone" placeholder="" required="">

                        </div>
                        <div class="mb-3">
                            <label for="reunionroute">Route to try first</label>
                            <textarea class="form-control" name="reunionroute" id="reunionroute" rows="2" cols="80" required=""></textarea>

                        </div>

                        


                        <hr class="">
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Next</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
