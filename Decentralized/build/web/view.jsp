<%@page import="java.io.OutputStream"%>
<%@page import="pack.TrippleDes"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
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
                    <li><a href="readerhome.jsp" class="current">Home</a></li>
                    <li><a href="readerview.jsp">File Details</a></li>
                    <li><a href="index.jsp" class="last">Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"> 
                <%
                    String cipher1 = null;
                    String a = request.getParameter("fname");
                    System.out.println("Query  " + a);
                    Connection con = Db.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from files where filename ='" + a + "'");
                    while (rs.next()) {
                        cipher1 = rs.getString("data");
                        System.out.println("File" + cipher1);
                    }
                    String plain = new TrippleDes().decrypt(cipher1);
                    System.out.println("File data "+plain);
                   %>
                   <textarea style="width: 500px;height: 400px;border-bottom-left-radius: 20px;border-bottom-right-radius: 20px;border-top-left-radius: 20px;border-top-right-radius: 20px;margin-left: 150px;margin-top: 10px;" readonly><%=plain%></textarea>                            
            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>