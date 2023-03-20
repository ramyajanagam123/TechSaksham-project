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
                    <li><a href="writerview.jsp" class="current">Home</a></li>
                    <li><a href="wtoken.jsp">Request Token</a></li>
                    <li><a href="wrequest.jsp">Request KDC</a></li>
                    <li><a href="wfiledetails.jsp">File Details</a></li>
                    <li><a href="index.jsp" class="last">Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"><br /><br /> 
                <%
                    String s= (String)session.getAttribute("e");
                    String id = null;
                    String a= "Waiting";
                    Connection con = Db.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from request where id='"+s+"'");
                    while(rs.next())
                    {
                       id = rs.getString("KeyValue");
                    }
                    if(id == null)
                    {
                        st.executeUpdate("insert into request values('"+s+"','"+a+"')");
                    }
                    
                %>
                <div style="margin-top: 90px">
                <label style="margin-left: 230px;font-size: 20px"> Token ID</label> &nbsp;&nbsp;<input type="text" value="<%=id%>" class="textbox" readonly/>                
                </div>
            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>