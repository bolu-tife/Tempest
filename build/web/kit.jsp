<%-- 
    Document   : kit
    Created on : 02-Jan-2020, 05:57:13
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>

<!DOCTYPE html>
<html>
    <head>

        <link href="images/storm2.jpeg" rel="icon">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tempest Kit</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
       
        <script src="js/bootstrap.min.js"></script>
        <link href="css/grayscalemin.css" rel="stylesheet">
        <link href="css/all.min.css" rel="stylesheet">

        <style>
            tr
            {
                color: #17a2b8;;
                font-size: 20px;
            }
        </style>
        <!--background-color: #c0c8c8-->
    </head>
    <body id="page-top" style="color: #c0c8c8 ; background-image: url(bg-main2.jpg) ; background-repeat: no-repeat; background-position: center;background-size: cover; " >


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


        <div class="wrapper-editor" style="padding: 100px">

            

           

                <div class="text-center">
                    <a href="kitadd.jsp" class="btn btn-info btn-rounded btn-sm" data-toggle="modal" data-target="#modalAdd">Add<i
                            class="fas fa-plus-square ml-1"></i></a>
                </div>

                

               
                
            </div>
            
               
                <table id="dtBasicExample" class="table table-striped table-bordered" border="1" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th class="th-sm">S/N

                            </th>
                            <th class="th-sm">Name of Item

                            </th>
                            <th class="th-sm">initial Quantity

                            </th>
                            <th class="th-sm">Final Quantity after Storm

                            </th>
                            <th class="th-sm">Location at Homee

                            </th>

                        </tr>
                    </thead>
                    <%
                           Connection con;
                        PreparedStatement st;
                        ResultSet res;
//                        String famname = session.getAttribute("fammname").toString();
                        try {
//                            Class.forName("com.mysql.jbdc.Driver").newInstance();
//                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                            String q1 = "SELECT * FROM kit";
                            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                             st = (PreparedStatement) con.prepareStatement(q1);
                             res = st.executeQuery();
                            
                            while(res.next()){
//                                String sn = res.getString("sn"); 
                           
                        %>  
                    <tbody>
                        <form method="post" action="kit1.jsp">
                        <tr>
                            <td><input type="text" value="<%= res.getString("sn") %>" name="sn"></td>
                            <td><input type="text" value="<%= res.getString("itemname") %>" name="itemname"></td>
                            <td><input type="text" value="<%= res.getString("initialquant") %>" name="initialquant"></td>
                            <td><input type="text" value="<%= res.getString("finalquant") %>" name="finalquant"></td>
                            <td><input type="text" value="<%= res.getString("location") %>" name="location"></td></td>
                            <td><input type="submit" value="Edit" class="btn btn-info"></td>
                            
                              
                            
                        </tr>
                        </form>
                        



                    </tbody>

                    <%
                            }
                            res.close();

                        } catch (Exception e){
                            out.write("Error message: "+e.getMessage());
}%>
                         
                    <tfoot>
                        <tr>
                            <th>S/N
                            </th>
                            <th>Name
                            </th>
                            <th>Initial Quantity
                            </th>
                            <th>Final Quantity after Storm
                            </th>
                            <th>Location at Home
                            </th>

                        </tr>
                    </tfoot>
                </table>
            </form>
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
