<%-- 
    Document   : kit1
    Created on : 14-Jan-2020, 11:33:34
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
            
            String sn, itemname, initialquant, finalquant, location;
            %>
            
            <%
//                String userName = session.getAttribute("userName").toString();
                sn = itemname = initialquant = finalquant = location = "";
                sn = request.getParameter("sn");
                itemname = request.getParameter("itemname");
                initialquant = request.getParameter("initialquant");
                finalquant = request.getParameter("finalquant");
                location = request.getParameter("location");
               
//                
//                String sql = "INSERT INTO kit VALUES('" +userName + "', '"+itemname+"','"+initialquant+"','"+finalquant+"','"+location+"')";
                
//                  String sql = "UPDATE kit SET `itemname`="itemname" + "','" + initialquant="initialquant"+ "','" + finalquant="finalquant" + "','" + location="location";
//                          + "('" +sn+"','"+itemname+"','"+initialquant+"','"+finalquant+"','"+location+"')";
                  String sql = "UPDATE kit SET `itemname`=itemname, `initialquant`=initialquant, `finalquant`=finalquant, `location`=location WHERE `sn` = '"+sn+"'";
//                
                
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
