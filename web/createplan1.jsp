<%-- 
    Document   : createplan1
    Created on : 11-Jan-2020, 23:02:37
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
            String familyname,familypassword;
            %>
            
            <%
                familyname = familypassword = "";
                familyname = request.getParameter("familyname");
                familypassword = request.getParameter("familypassword");
                
                String sql = "INSERT INTO passwordplan VALUES('" + familyname+ "','"+ familypassword +"')";
                
//            String sql1 = "INSERT INTO plan VALUES('" + familyname+ "','"+ familypassword+ "','" +" "+ "','" + " " + "','" + "" +  "','" + " " + "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+"','"+" " +"','"+" " +"','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "','" +" "+ "')";

                try
                {
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                    Statement st = (Statement) conn.createStatement();
                    
//                    HttpSession famsession = request.getSession();
                    session.setAttribute("famname", familyname);
                    
                    st.executeUpdate(sql);
//                    st.executeUpdate(sql1);
                    conn.setAutoCommit(true);
                    conn.close();
                    response.sendRedirect("newjsp.jsp");
                    
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
    </body>
</html>
