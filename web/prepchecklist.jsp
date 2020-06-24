<%-- 
    Document   : prepchecklist
    Created on : 27-Dec-2019, 13:26:40
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emergency Preparation checklist</title>
        <link rel="stylesheet" href="dropdown.css">
        
    </head>

    <body >
        <div class="navbar" >
            <a href="#home">Home</a>
           
            <div class="dropdown">
            <button class="dropbtn">Plan
                <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="#">Make Plan</a>
                <a href="#">View</a>
                <a href="#">Delete</a>
                <a href="#">Share</a>
            </div>
        </div>
        <a href="#news">Emergency</a>
        <a href="#news">Emergency Kit</a>
        <a href="#news">About us</a>
        
    </div>


    <form action="building.jsp" method="post">
        <h1>Emergency Prepchecklist</h1>
        <p>
        <h3>Local Contact</h3>
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        <label for="city">City</label>
        <input type="text" id="city" name="city" required>
        <label for="add">Address</label>
        <input type="text" id="add" name="add" required>
        <label for="add">Telephone</label>
        <input type="text" id="tel" name="tel" required>
        </p>

        <p>
        <h3>Out-of-State Contact</h3>
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        <label for="city">City</label>
        <input type="text" id="city" name="city" required>
        <label for="add">Address</label>
        <input type="text" id="add" name="add" required>
        <label for="add">Telephone</label>
        <input type="text" id="tel" name="tel" required>
        </p>

        <p>
        <h3>Nearest Relative</h3>
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        <label for="city">City</label>
        <input type="text" id="city" name="city" required>
        <label for="add">Address</label>
        <input type="text" id="add" name="add" required>
        <label for="add">Telephone</label>
        <input type="text" id="tel" name="tel" required>
        </p>

        <p>
        <h3>Family Work Numbers</h3>
        <label for="father">Father</label>
        <input type="text" id="father" name="father" required>
        <label for="mother">Mother</label>
        <input type="text" id="mother" name="mother" required>
        <label for="other">Other</label>
        <input type="text" id="other" name="other" >

        </p>


        <p>
        <h3>Emergency Telephone Numbers</h3>
        <label for="pol">Police Department</label>
        <input type="text" id="pol" name="pol" required>
        <label for="fire">Fire Department</label>
        <input type="text" id="fire" name="fire" required>
        <label for="hos">Hospital</label>
        <input type="text" id="hos" name="hos" required>

        </p>
        <p>
        <h3>Family Physicians</h3>
        <label for="pname">Name</label>
        <input type="text" id="pname" name="pname" required>
        <label for="ptel">Telephone</label>
        <input type="text" id="ptel" name="ptel" required>
        <label for="pmail">Email</label>
        <input type="email" id="pmail" name="pmain" >

        <br>
        <label for="pname2">Name</label>
        <input type="text" id="pname2" name="pname2" >
        <label for="ptel2">Telephone</label>
        <input type="text" id="ptel2" name="ptel2" >
        <label for="pmail2">Email</label>
        <input type="email" id="pmail2" name="pmain2" >
        </p>
        <p>
        <h3>Reunion Locations</h3>
        <label >Right outside your home
            <br>
            <textarea id="homearea" name="home" rows="4" cols="60"></textarea>
        </label>
        <br>
        <label >Away from the neighbourhood, in case you cannot return home
            <br>
            <textarea  name="out" rows="4" cols="60"></textarea>
        </label>
        <br>

        <label for="pnum">Phone number:</label>
        <input type="text" id="pnum" name="pnum" required>
        <br>
        <label for="pnum">Phone number:</label>
        <input type="text" id="pnum" name="pnum" >

        <br>
        <br>
        <label for="first">Route to try first</label>
        <br>
        <textarea id="first" name="out" rows="4" cols="80"></textarea>
    </p>

    <p>
    <h3>Further Description</h3>

    <textarea name="name" rows="8" cols="80"></textarea>
</p>
<input type="submit" value="next">

</form>
</body>
</html>
