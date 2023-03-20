<%@page import="java.sql.ResultSet"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Decentralized</title>
        <meta name="keywords" content="free web template, sport center, CSS, HTML, 2 columns" />
        <meta name="description" content="Free Website Template - Sport Center" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <div id="tmeplatemo_container">

            <div id="templatemo_header_01">
                <br />
                <center><label style="font-size: 35px">Decentralized Access Control with Anonymous Authentication <br /><br />of Data Stored in Clouds</label></center> 
            </div>	
            <div id="templatemo_menu">
                <ul>
                    <li><a href="writerview.jsp" class="current">Home</a></li>
                    <li><a href="wtoken.jsp">Request Token</a></li>
                    <li><a href="wrequest.jsp">Request KDC</a></li>
                    <li><a href="wfiledetails.jsp">File Details</a></li>
                    <li><a href="index.jsp" class="last">Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"><br /><br /> 
                <div style="width: 500px;height: 100px;margin-left: 180px"><br />
                    <%
                        try {
                            String a = (String) session.getAttribute("e");
                            String k = null;
                            String d = null;
                            Connection con = Db.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from kdc where uid='" + a + "'");
                            while (rs.next()) {
                                k = rs.getString("request");
                                d = rs.getString("pkey");%>
                                <label style="margin-left: 50px;font-size: 20px">TOKEN ID</label>&nbsp;&nbsp;<input type="text" value="<%=k%>" class="textbox" readonly/><br /><br />
                                <label style="margin-left: 50px;font-size: 20px">KDC KEY</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=d%>" class="textbox" readonly/>
                    <%  }
                        } catch (Exception e) {
                            System.out.println("Error in writerfile details" + e.getMessage());
                        }
                    %>
                </div>
                <div style="margin-left: 100px  ">
                    <table border="1">
                        <tr>
                            <th>File Name</th>
                            <th>File Subject</th>
                            <th>File Type</th>
                            <th>File Owner</th>
                            <th>Upload Date</th>
                           <th>View</th>
                        </tr>
                        <%
                            try {
                                String fn = null;
                                String fs = null;
                                String ft = null;
                                String fo = null;
                                Date d = null;
                                Connection con = Db.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from files ");
                                while (rs.next()) {
                                    fn = rs.getString("filename");
                                    fs = rs.getString("subject");
                                    ft = rs.getString("filetype");
                                    fo = rs.getString("owner");
                                    d = rs.getDate("CDate");%>
                        <tr>
                            <td><%=fn%></td>
                            <td><%=fs%></td>
                            <td><%=ft%></td>
                            <td><%=fo%></td>
                            <td><%=d%></td>
                            <td><a href="wdataview.jsp?<%=fn%>" style="text-decoration: none">View</a></td>
                        </tr>
                        <%  }
                            } catch (Exception e) {
                                System.out.println("Error in File details" + e.getMessage());
                            }
                        %>
                    </table>   
                </div>

            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>