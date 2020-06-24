<%-- 
    Document   : Tips
    Created on : 11-Jan-2020, 23:54:29
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="stylesheet" href="css/bootstrap.css">

        <link rel="stylesheet" href="css/bootstrap-grid.css">
<!--        <script src="js/bootstrap.js"></script>-->
        <script src="js/bootstrap.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('dropdown-toggle').dropdown()
            });
        </script>

    </head>
    <body>
      

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="home.jsp">Tempest</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Plan
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Make a Plan</a>
                            <a class="dropdown-item" href="#">View</a>
                            <a class="dropdown-item" href="#">Delete</a>
                            <a class="dropdown-item" href="#">Share</a>

                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Emergency.jsp">Emergency</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="kitchecklist.jsp">Emergency Kit</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Plan
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Make a Plan</a>
                            <a class="dropdown-item" href="#">View</a>
                            <a class="dropdown-item" href="#">Delete</a>
                            <a class="dropdown-item" href="#">Share</a>

                        </div>
                    </li>
                </ul>
            </div>
        </nav>



        <div class="container">


            <div class="jumbotron">
                <h1>Tempest</h1>
                <p>The storm is coming
                    <br>
                    Disasters and emergencies can happen anytime and anywhere. They can happen
                    without warning, leaving you with limited time to respond. Learn how to protect
                    yourself and cope with disaster by planning ahead. Ensure you have the correct
                    supplies, contact information and escape routes prepared ahead of time. By
                    having these supplies and plans in place, you will be able to react appropriately
                    and survive
                </p>

                <!--                <img class="d-block mx-auto mb-4" src="storm2.jpeg" alt=""/>-->




            </div>
            <h2>Before a storm</h2>
            <p>

                Get your home safe and ready: Check fences, roofs and gutters; make any repairs that are needed.
                Trim branches near your home and near powerlines.
                Clean gutters and downpipes regularly; also secure loose roof tiles/sheets.
                Check your insurance: Do you have adequate cover for your home and contents?
                Move cars undercover and away from trees.
                Put away or secure loose items like outdoor furniture and pot plants.
                Create a safe place for your pets out of the storm.
                Disconnect all electrical items.
                <br>
                <a href="createplan.jsp">Create a plan</a>
            </p>

            <h3> During a storm</h3>

            <p> While conditions are severe, stay indoors and keep away from windows.
                Check on neighbours, friends and family members to see if they are safe and prepared.
                If you're in your car, slow down, turn on your headlights and be aware of hazards on the roads (powerlines, trees, etc).
                Don't drive into floodwater.
            </p>

            <h3>After a storm</h3>
            <p>
                Stay clear of creeks, drains and other waterways as there is a risk of flooding, including flash floods.
                Be careful of fallen trees, powerlines and damaged buildings.
                Don't go sightseeing; you could hamper the efforts of emergency services.
                Check on your neighbours as soon as it is safe to do so.
            </p>

            <h3>Emergency services</h3>
            <p>

            </p>
            
        </div>  


    </body>
</html>
