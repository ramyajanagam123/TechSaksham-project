<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
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
                    <li><a href="creatorview.jsp" class="current">Home</a></li>
                    <li><a href="ctoken.jsp">Request Token</a></li>
                    <li><a href="ckrequest.jsp">Request KDC</a></li>
                    <li><a href="fileupload.jsp">File Upload</a></li>
                    <li><a href="filedetails.jsp">File Details</a></li>
                    <li><a href="index.jsp" class="last">Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"><br /><br /> 
                <%
                    try{
                    String s = (String)session.getAttribute("c");
                    String t = null;
                    String p = null;
                    Connection con =Db.getConnection();
                    Statement st =con.createStatement();
                    ResultSet rs =st.executeQuery("select * from kdc where uid ='"+s+"' ");
                    while(rs.next())
                    {
                       t = rs.getString("request");
                       p = rs.getString("pkey");
                      }%>
                <div style="border: 1px solid blue;width: 500px;height: 330px;border-radius: 20px;margin-left: 230px">
                    <div style="border: 1px solid red;border-top-left-radius: 20px;border-top-right-radius: 20px;height: 50px;"><br />
                        <center> <label style="margin-top: 40px;font-size: 30px">File Upload</label></center>
                    </div>
                    <div style="border: 1px solid red;height: 275px;border-bottom-left-radius: 20px;border-bottom-right-radius: 20px">
                        <form action="NewServlet" method="post" enctype="multipart/form-data"><br />
                            <label style="font-size: 20px;margin-left: 50px">File Name</label>&nbsp;&nbsp;<input type="text" class="textbox" style="margin-left: 9px" name="subject"/><br /><br />
                            <label style="font-size: 20px;margin-left: 50px">Upload File</label>&nbsp;&nbsp;<input type="file" class="textbox" name="file"/><br /><br />
                            <label style="font-size: 20px;margin-left: 50px">Token</label>&nbsp;&nbsp;<input type="text" value="<%=t%>"class="textbox" style="margin-left: 45px"/><br /><br />
                            <label style="font-size: 20px;margin-left: 50px">PKEY</label>&nbsp;&nbsp;<input type="text" value="<%=p%>"class="textbox" style="margin-left: 50px"/><br /><br />           
                            <center><input type="submit" value="Submit"class="myButton" />&nbsp;&nbsp;
                                <input type="reset" value="Reset"class="myButton" /></center>
                        </form>
                    </div>
                </div>
                            <% }
                    catch(Exception e)
                    {
                        System.out.println("Error in fileupload"+e.getMessage());
                    }
                %>
            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>