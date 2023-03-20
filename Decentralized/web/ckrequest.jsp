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
                    <li><a href="creatorview.jsp" class="current">Home</a></li>
                    <li><a href="ctoken.jsp">Request Token</a></li>
                    <li><a href="ckrequest.jsp">Request KDC</a></li>
                    <li><a href="fileupload.jsp">File Upload</a></li>
                    <li><a href="filedetails.jsp">File Details</a></li>
                    <li><a href="index.jsp" class="last">Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"><br /><br /> 
                <form style="border: 1px solid blue;width: 500px;height: 150px;margin-left: 160px;margin-top: 70px;border-radius: 20px" action="caction.jsp"><br />
                    <label style="margin-left: 70px;font-size: 20px">Token ID</label>&nbsp;&nbsp;<input type="text" class="textbox" name="search"/><br /><br />
                    <input type="submit" value="Submit" class="myButton" style="margin-left: 190px;margin-top: 20px"/>
                </form>          
            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>