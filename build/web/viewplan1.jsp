<%-- 
    Document   : viewplan2
    Created on : 06-Jan-2020, 01:49:07
    Author     : boluwatifeomosowon
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String famnameStored;
            String passwordStored;
            Connection con;
            PreparedStatement st;
            ResultSet res;
        %>
        
        <%
            try{
                famnameStored ="";
                passwordStored = "";
                String famnameEntered = request.getParameter("familyname").trim();
                String passwordEntered =request.getParameter("familypassword").trim();
                String sql = "SELECT familyname,familypassword FROM passwordplan WHERE (familyname = '"+ famnameEntered +"' "+ "AND familypassword = '"+passwordEntered+"')";
               boolean verify=false;
               con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
               st = (PreparedStatement) con.prepareStatement(sql);
               res = st.executeQuery();
               boolean recordExists = res.absolute(1);
               if(recordExists == true)
                   verify=true;
               if(verify==true){
                   session.setAttribute("fammname", famnameEntered);
                   response.sendRedirect("viewplan3.jsp");
               }
                    
               else
                   response.sendRedirect("createplan.jsp");
               
                con.close();
            }
            catch(SQLException ex)
            {
                out.write("An error occured: " + ex.toString());
            }
            %>
    </body>
</html>
