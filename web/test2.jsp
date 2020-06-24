<%-- 
    Document   : test2
    Created on : 10-Jan-2020, 23:04:56
    Author     : boluwatifeomosowon
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! 
            String name,password;
            %>
            
            <%
                name = password = "";
                name = request.getParameter("name");
                password = request.getParameter("password");
                
                String sql = "INSERT INTO test VALUES('" + name+ "','"+ password +"')";
                
                try
                {
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                    Statement st = (Statement) conn.createStatement();
                    st.executeUpdate(sql);
                    
                    conn.setAutoCommit(true);
                    conn.close();
                    response.sendRedirect("newjsp2.jsp");
                    
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
    </body>
</html>
