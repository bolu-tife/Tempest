<%-- 
    Document   : emergencyview
    Created on : 14-Jan-2020, 00:22:08
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <script> src = "js.bootsrap.min.js"</script>
        <style>
            body{
                background-image: url(images/ambulance.jpeg);
                background-repeat: no-repeat;
                background-position: center;
                
                background-size: cover;
               
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Storm Prepper</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Plan</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Evacuation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="kitchecklist.jsp">Emergency Kit</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Resources
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="py-5 text-center">
                <!--                <img class="d-block mx-auto mb-4" src="" alt="" width="72" height="72">-->
                <h2>It's an Emergency!</h2>
                <h3  class="lead" style="text-align: center">
                    <strong> Be at alert!</strong>
                </h3>
            </div>
            <div class="col-md-6 mb-3">
                <form action="emergency1.jsp" method="post">



                    <table  class='table' style="  border:none;">
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
                    <a href="noplan ">Don't have a plan?</a>
                </form>



            </div>

        </div>
    </body>
</html>
