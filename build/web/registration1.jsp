<%-- 
    Document   : registration1
    Created on : 11-Jan-2020, 01:05:18
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
            
            String regfirstname, reglastname, regusername,regnumber,regmail, regpassword;
            %>
            
            <%
                regfirstname = reglastname = regusername = regnumber = regmail = regpassword = "";
                
                regfirstname = request.getParameter("regfirstname");
                reglastname = request.getParameter("reglastname");
                regusername = request.getParameter("regusername");
                regnumber = request.getParameter("regnumber");
                regmail = request.getParameter("regmail");
                regpassword = request.getParameter("regpassword");
                
                
                String sql = "INSERT INTO registration VALUES('" +regfirstname+"','"+reglastname+"','"+regusername+"','"+regnumber+"','"+regmail+"','"+regpassword+"')";
                
                String sql2 = "INSERT INTO login VALUES('" + regusername+ "','"+ regpassword +"')";

                
                try
                {
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                    Statement st = (Statement) conn.createStatement();
                    
                    session.setAttribute("userName", regusername);
                    st.executeUpdate(sql);
                    st.executeUpdate(sql2);
                    
                    conn.setAutoCommit(true);
                    conn.close();
                    response.sendRedirect("home.jsp");
                    
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                %>
    </body>
</html>
