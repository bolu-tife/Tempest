<%-- 
    Document   : newjsp1
    Created on : 06-Jan-2020, 22:41:00
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
            
            String localname, localno, localmail, localadd, localadd2;
            String outname, outno, outmail, outadd, outadd2;
            String relname, relno, relmail, reladd, reladd2;
            String fname, fno, fmail, mname, mno, mmail, oname, ono, omail;
            String police, fire, hospital;
            String phyname, phyno, phymail, phyname2, phyno2, phymail2;
            String reunionclose, reunionfar, reunionadd, reunionphone, reunionroute;
        %>

        <%   
//            String famname = request.getParameter("u");
//            Cookie ck[] = request.getCookies();
//            famname = ck[0].getValue();
//            HttpSession famsession = request.getSession();
            String famname = session.getAttribute("famname").toString();
            
            
            localname = localno = localmail = localadd = localadd2 = "";
            outname = outno = outmail = outadd = outadd2 = "";
            relname = relno = relmail = reladd = reladd2 = "";
            fname = fno = fmail = mname = mno = mmail = oname = ono = omail = "";
            police = fire = hospital = "";
            phyname = phyno = phymail = phyname2 = phyno2 = phymail2 = "";
            reunionclose = reunionfar = reunionadd = reunionphone = reunionroute  = "";

            localname = request.getParameter("localname");
            localno = request.getParameter("localno");
            localmail = request.getParameter("localmail");
            localadd = request.getParameter("localadd");
            localadd2 = request.getParameter("localadd2");

            outname = request.getParameter("outname");
            outno = request.getParameter("outno");
            outmail = request.getParameter("outmail");
            outadd = request.getParameter("outadd");
            outadd2 = request.getParameter("outadd2");

            relname = request.getParameter("relname");
            relno = request.getParameter("relno");
            relmail = request.getParameter("relmail");
            reladd = request.getParameter("reladd");
            reladd2 = request.getParameter("reladd2");

            fname = request.getParameter("fname");
            fno = request.getParameter("fno");
            fmail = request.getParameter("fmail");
            mname = request.getParameter("mname");
            mno = request.getParameter("mno");
            mmail = request.getParameter("mmail");
            oname = request.getParameter("oname");
            ono = request.getParameter("ono");
            omail = request.getParameter("omail");

            police = request.getParameter("police");
            fire = request.getParameter("fire");
            hospital = request.getParameter("hospital");

            phyname = request.getParameter("phyname");
            phyno = request.getParameter("phyno");
            phymail = request.getParameter("phymail");
            phyname2 = request.getParameter("phyname2");
            phyno2 = request.getParameter("phyno2");
            phymail2 = request.getParameter("phymail2");

            reunionclose = request.getParameter("reunionclose");
            reunionfar = request.getParameter("reunionfar");
            reunionadd = request.getParameter("reunionadd");
            reunionphone = request.getParameter("reunionphone");
            reunionroute = request.getParameter("reunionroute");
            
            


            String sql = "INSERT INTO plan VALUES('" +famname+ "', '" +localname+ "','" + localno + "','" + localmail + "','" + localadd + "','" +localadd2+ "','" +outname+ "','" +outno+ "','" +outmail+ "','" +outadd+ "','" +outadd2+ "','" +relname+ "','" +relno+"','"+ relmail +"','"+reladd +"','" +reladd2+ "','" +fname+ "','" +fno+ "','" +fmail+ "','" +mname+ "','" +mno+ "','" +mmail+ "','" +oname+ "','" +ono+ "','" +omail+ "','" +police+ "','" +fire+ "','" +hospital+ "','" +phyname+ "','" +phyno+ "','" +phymail+ "','" +phyname2+ "','" +phyno2+ "','" +phymail2+ "','" +reunionclose+ "','" +reunionfar+ "','" +reunionadd+ "','" +reunionphone+ "','" +reunionroute+ "')";

            try {
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:8889/StormPrepper?useTimezone=true&serverTimezone=UTC", "root", "root");
                Statement st = (Statement) conn.createStatement();
                st.executeUpdate(sql);

                conn.setAutoCommit(true);
                conn.close();
                response.sendRedirect("plan.jsp");

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
