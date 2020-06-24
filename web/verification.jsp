<%-- 
    Document   : verification
    Created on : 27-Dec-2019, 15:08:42
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
            String usernameStored;
            String passwordStored;
            Connection con;
            PreparedStatement st;
            ResultSet res;
        %>
        
        <%
            try{
                usernameStored ="";
                passwordStored = "";
                
                 
                String usernameEntered = request.getParameter("regusername").trim();
                String passwordEntered =request.getParameter("regpassword").trim();
                String sql = "SELECT regusername, regpassword FROM login WHERE (regusername = '"+usernameEntered+"' "
                        + "AND regpassword = '"+passwordEntered+"')";
               boolean verify=false;
               con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
               st = (PreparedStatement) con.prepareStatement(sql);
               res = st.executeQuery();
               boolean recordExists = res.absolute(1);
               if(recordExists == true)
                   verify=true;
               
               if(verify==true)
                   session.setAttribute("userName", usernameEntered);
                   response.sendRedirect("home.jsp");
               else
                   response.sendRedirect("registration.jsp");
               
                con.close();
            }
            catch(SQLException ex)
            {
                out.write("An error occured: " + ex.toString());
            }
            %>
    </body>
</html>
