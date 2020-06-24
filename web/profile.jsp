<%-- 
    Document   : profile
    Created on : 13-Jan-2020, 02:00:48
    Author     : boluwatifeomosowon
--%>





<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.io.*, java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String familyname;
            String familypassword;
            Connection con;
            PreparedStatement st;
            ResultSet res;
            String av;
            
        %>

        <%
            familyname = session.getAttribute("familyname").toString();
            familypassword = session.getAttribute("familypassword").toString();
            
            try
            {
                String sql = "SELECT familyname, familypassword FROM passwordplan WHERE (familyname = '"+familyname+"' "
                        + "AND familypassword = '"+familypassword+"')";
               
               con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
               st = (PreparedStatement) con.prepareStatement(sql);
               out.write("sql");
               res = st.executeQuery();
               while(res.next())
               {
                   session.setAttribute("localname", res.getString("localname"));
                   session.setAttribute("localno", res.getString("localno"));
               }
               
               con.close();
               response.sendRedirect("createplan.jsp");
            }
            
            catch(SQLException ex)
            {
                out.write("An error occured" + ex.toString());
            }

        %>
    </body>
</html>
