<%-- 
    Document   : emergency1
    Created on : 11-Jan-2020, 15:58:15
    Author     : boluwatifeomosowon
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="images/storm2.jpeg" rel="icon">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
            
            String secured, cleared, trimmed, checked, expired, shut;
            %>
            
            <%
                String userName = session.getAttribute("userName").toString();
                secured = cleared = trimmed = checked = expired = shut = "";
                
                
                secured = request.getParameter("secured");
                cleared = request.getParameter("cleared");
                trimmed = request.getParameter("trimmed");
                checked = request.getParameter("checked");
                expired= request.getParameter("expired");
                shut = request.getParameter("shut");
                
                
                String sql = "INSERT INTO emergency VALUES('" +userName+ "','" +secured+"','"+cleared+"','"+trimmed+"','"+checked+"','"+expired+"','"+shut+"')";
                
                

                
                try
                {
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                    Statement st = (Statement) conn.createStatement();
                    st.executeUpdate(sql);
                    
                    
                    conn.setAutoCommit(true);
                    conn.close();
                    response.sendRedirect("plan.jsp");
                    
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
    </body>
</html>
