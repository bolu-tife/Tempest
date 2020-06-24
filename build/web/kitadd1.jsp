<%-- 
    Document   : kitadd1
    Created on : 13-Jan-2020, 10:15:26
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
            
            String  itemname, initialquant, finalquant, location;
            %>
            
            <%
//                String userName = session.getAttribute("userName").toString();
                 itemname = initialquant = finalquant = location = "";
              
                itemname = request.getParameter("itemname");
                initialquant = request.getParameter("initialquant");
                finalquant = request.getParameter("finalquant");
                location = request.getParameter("location");
               
//                
//                String sql = "INSERT INTO kit VALUES('" +userName + "', '"+itemname+"','"+initialquant+"','"+finalquant+"','"+location+"')";
                
                  String sql = "INSERT INTO kit (itemname,initialquant,finalquant,location) VALUES ('" +itemname+"','"+initialquant+"','"+finalquant+"','"+location+"')";
              
                
                try
                {
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                    Statement st = (Statement) conn.createStatement();
                    st.executeUpdate(sql);
                    
                    
                    conn.setAutoCommit(true);
                    conn.close();
                    response.sendRedirect("kit.jsp");
                    
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
    </body>
</html>
