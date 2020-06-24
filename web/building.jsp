<%-- 
    Document   : building.jsp
    Created on : 27-Dec-2019, 14:32:05
    Author     : boluwatifeomosowon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        

Select file: <br />
<form action="buildingupload.jsp" method="post"
                        enctype="multipart/form-data">
<input type="file" name="file" size="50" />
<br />
<input type="submit" value="Upload File" />
<a href="viewplan.jsp" >Save this plan</a>
</form>
    </body>
</html>
