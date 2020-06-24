<%-- 
    Document   : kitadd
    Created on : 13-Jan-2020, 03:04:52
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="newcss.css">
        <script src="js/bootstrap.min.js"></script>
        <link href="css/grayscalemin.css" rel="stylesheet">
        <link href="css/all.min.css" rel="stylesheet">
    </head>
    <body>
        
         <form class="form-signin" action="kitadd1.jsp" method="post">
            
            <div></div>
        <p></p>
         <p></p>
            <div class="text-center mb-4">
                <!--        <img class="mb-4" src="" alt="" width="72" height="72">-->
                <h1 >Tempest</h1>
                <p></p>
                <h5 class="mb-3">Add Item</h5>
                
                
            </div>
            

            <div class="form-label-group">
                <input type="text" id="itemname" class="form-control" name="itemname" placeholder="Name of item" autofocus="" required>
                <label for="itemname">Name of item</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="initialquant" class="form-control" name="initialquant" placeholder="Initial Quantity" autofocus="" required>
                <label for="initialquant">Initial Quantity</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="finalquant" class="form-control" name="finalquant" placeholder="Final Quantity after Storm" autofocus="" required>
                <label for="finalquant">Final Quantity after Storm</label>
            </div>

            <div class="form-label-group">
                <input type="text" id="location" class="form-control" name="location" placeholder="Location at Home" autofocus="" required>
                <label for="location">Location at Home</label>
            </div>

            



            <button class="btn btn-lg btn-primary btn-block" type="submit">Add</button>
           

        </form>

        
    </body>
</html>
