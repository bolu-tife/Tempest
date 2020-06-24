<%-- 
    Document   : viewplan3
    Created on : 06-Jan-2020, 02:09:45
    Author     : boluwatifeomosowon
--%>

<%@page import="java.sql.*;"%>
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

        <div class="container">
            <div class="py-5 text-center">
                
                <h2>Emergency Preparation Checklist</h2>
                <p class="lead" style="text-align: justify">
                    Make a plan today. Your family may not be together if a disaster strikes, so it is important to know which types of disasters could affect your area.  Know how you’ll contact one another and reconnect if separated. Establish a family meeting place that’s familiar and easy to find.
                </p>
            </div>
            <div class="row">
                <div class="col-md-8 order-md-1">
                    
                  
                    <%
                        Connection con;
                        PreparedStatement st;
                        ResultSet res;
                        String famname = session.getAttribute("fammname").toString();
                        try {
//                            Class.forName("com.mysql.jbdc.Driver").newInstance();
//                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                            String q1 = "SELECT * FROM plan where familyname='"+famname+"'";
                            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                             st = (PreparedStatement) con.prepareStatement(q1);
                             res = st.executeQuery();
                            
                            while(res.next()){
                  %>
                    <h4 class="mb-3">Local Contact</h4>
                    <form class="needs-validation" novalidate="" action="kit.jsp" method="post">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="localname">Name</label>
                                <input type="text" class="form-control" name="localname" id="localname" placeholder="" value="<%= res.getString("localname") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="localno">Phone Number</label>
                                <input type="text" class="form-control" name="localno" id="localno" placeholder="" value="<%= res.getString("localno") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="localmail">Email <span class="text-muted"></span></label>
                            <input type="email" class="form-control" id="localmail" name="localmail" placeholder="you@example.com" value="<%= res.getString("localmail") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="localadd">Address</label>
                            <input type="text" class="form-control" id="localadd" name="localadd" placeholder="00 Streetname St" value="<%= res.getString("localadd") %>" disabled>

                        </div>

                        <div class="mb-3">
                            <label for="localadd2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="localadd2" name="localadd2" placeholder="City, Country" value="<%= res.getString("localadd2") %>" disabled>
                        </div>

                        <hr class="mb-4">

                        <h4 class="mb-3">Out of State Contact</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="outname">Name</label>
                                <input type="text" class="form-control" id="outname" name="outname" placeholder="" value="<%= res.getString("outname") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="outoo">Phone Number</label>
                                <input type="text" class="form-control" id="outno" name="outno" placeholder="" value="<%= res.getString("outno") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="outmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="outmail" name="outmail" placeholder="you@example.com" value="<%= res.getString("outmail") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="outadd">Address</label>
                            <input type="text" class="form-control" id="outadd" name="outadd" placeholder="00 Streetname St" value="<%= res.getString("outadd") %>" disabled>

                        </div>

                        <div class="mb-3">
                            <label for="outadd2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="outadd2" name="outadd2" placeholder="City, Country" value="<%= res.getString("outadd2") %>" disabled>
                        </div>


                        <hr class="mb-4">

                        <h4 class="mb-3">Nearest Relative</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="relname">Name</label>
                                <input type="text" class="form-control" id="relname" name="relname" placeholder="" value="<%= res.getString("relname") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="relno">Phone Number</label>
                                <input type="text" class="form-control" id="relno" name="relno" placeholder="" value="<%= res.getString("relno") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="relmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="relmail" name="relmail" placeholder="you@example.com" value="<%= res.getString("relmail") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="reladd">Address</label>
                            <input type="text" class="form-control" id="reladd" name="reladd" placeholder="00 Streetname St" value="<%= res.getString("reladd") %>" disabled>

                        </div>

                        <div class="mb-3">
                            <label for="reladd2">Address 2 <span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="reladd2" name="reladd2" placeholder="City, Country" value="<%= res.getString("reladd2") %>" disabled>
                        </div>



                        <hr class="mb-4">

                        <h4 class="mb-3">Family Contact</h4>
                        <h6 >Father</h6>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="fname">Name</label>
                                <input type="text" class="form-control" id="fname" placeholder="" name="fname" value="<%= res.getString("fname") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="fno">Phone Number</label>
                                <input type="text" class="form-control" id="fno" placeholder="" name="fno" value="<%= res.getString("fno") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="fmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="fmail" name="fmail" placeholder="you@example.com" value="<%= res.getString("fmail") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <br>
                        <h6 >Mother</h6>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="mname">Name</label>
                                <input type="text" class="form-control" id="mname" name="mname" placeholder="" value="<%= res.getString("mname") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="mno">Phone Number</label>
                                <input type="text" class="form-control" id="mno" name="mno" placeholder="" value="<%= res.getString("mno") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="mmail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="mmail" name="mmail" placeholder="you@example.com" value="<%= res.getString("mmail") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>


                        <br>
                        <h6 >Other</h6>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="oname">Name</label>
                                <input type="text" class="form-control" id="oname" name="oname" placeholder="" value="<%= res.getString("oname") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="ono">Phone Number</label>
                                <input type="text" class="form-control" id="ono" name="ono" placeholder="" value="<%= res.getString("ono") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="omail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="omail" name="omail" placeholder="you@example.com" value="<%= res.getString("omail") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <hr class="mb-4">

                        <h4 class="mb-3">Emergency Contact</h4>


                        <div class="mb-3">
                            <label for="police">Police</label>
                            <input type="text" class="form-control" id="police" name="police" placeholder="" value="<%= res.getString("police") %>" disabled>

                        </div>



                        <div class="mb-3">
                            <label for="fire">Fire</label>
                            <input type="text" class="form-control" id="fire" name="fire" placeholder="" value="<%= res.getString("fire") %>" disabled>

                        </div>

                        <div class="mb-3">
                            <label for="hospital">Hospital</label>
                            <input type="text" class="form-control" id="hospital" name="hospital" placeholder="" value="<%= res.getString("hospital") %>" disabled>

                        </div>


                        <hr class="mb-4">

                        <h4 class="mb-3">Family Physician</h4>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="phyname">Name</label>
                                <input type="text" class="form-control" id="phyname" name="phyname" placeholder="" value="<%= res.getString("phyname") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="phyno">Phone Number</label>
                                <input type="text" class="form-control" id="phyno" name="phyno" placeholder="" value="<%= res.getString("phyno") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="phymail">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="phymail" name="phymail" placeholder="you@example.com" value="<%= res.getString("phymail") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="phyname2">Name</label>
                                <input type="text" class="form-control" id="phyname2" name="phyname2" placeholder="" value="<%= res.getString("phyname2") %>" disabled>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="phyno2">Phone Number</label>
                                <input type="text" class="form-control" id="phyno2" name="phyno2" placeholder="" value="<%= res.getString("phyno2") %>" disabled>
                                <div class="invalid-feedback">
                                    Valid Phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="phymail2">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="phymail2" name="phymail2" placeholder="you@example.com" value="<%= res.getString("phymail2") %>" disabled>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>

                        <hr class="mb-4">
                        <h4 class="mb-3">Reunion Location</h4>
                         <div class="mb-3">
                            <label for="reunionclose">Right Outside Your Residence</label>
                            <textarea class="form-control" id="reunionclose" name="reunionclose" rows="3" cols="80" value="<%= res.getString("reunionclose") %>" disabled></textarea>
                           
                        </div>
                        <div class="mb-3">
                            <label for="reunionfar">Away from the neighbourhood, in case you cannot return home</label>
                            <textarea class="form-control" id="reunionfar" name="reunionfar" rows="3" cols="80" value="<%= res.getString("reunionfar") %>" disabled></textarea>
                           
                        </div>
                        
                        <div class="mb-3">
                            <label for="reunionadd">Address</label>
                            <input type="text" class="form-control" name="reunionadd" id="reunionadd" placeholder="" value="<%= res.getString("reunionadd") %>" disabled>

                        </div>
                        <div class="mb-3">
                            <label for="reunionphone">Phone Number</label>
                            <input type="text" class="form-control" name="reunionphone" id="reunionphone" placeholder="" value="<%= res.getString("reunionphone") %>" disabled>

                        </div>
                        <div class="mb-3">
                            <label for="reunionroute">Route to try first</label>
                            <textarea class="form-control" name="reunionroute" id="reunionroute" rows="2" cols="80" value="<%= res.getString("reunionroute") %>" disabled></textarea>

                        </div>
                        <%
                            }
                            res.close();

                        } catch (Exception e){
                            out.write("Error message: "+e.getMessage());
}%>
                            
                        <hr class="">
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Emergency Checklist</button>
                    </form>
                </div>
            </div>
        </div>
   
    
</body>
</html>