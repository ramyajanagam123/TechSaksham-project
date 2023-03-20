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
                    String b= null;
                    String c= null;
                    String d= null;
                    String e= null;
                    Date f= null;
                    String g =null;
                    String k = null;
                    String a = request.getQueryString();
                    Connection con = Db.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from files where  filename='"+a+"'");
                    while(rs.next())
                    {
                      b=rs.getString("filename");
                      c=rs.getString("subject");
                      d=rs.getString("filetype");
                      e=rs.getString("size");
                      f= rs.getDate("CDate");
                      g =rs.getString("owner");
                   }
                    Statement st1 = con.createStatement();
                    ResultSet rs1 = st1.executeQuery("select * from request where id='"+g+"'");
                    while(rs1.next())
                    {
                        k = rs1.getString("KeyValue");
                    }
                    
                %>
                <div style="border: 1px solid blue;width: 500px;height:400px;margin-left: 200px;border-radius: 20px;background-image: url('images/login.png');">
                    <div style="border:1px solid ;border-top-right-radius: 20px;border-top-left-radius: 20px;">
                        <center><h1>File Details</h1></center>
                    </div>
                    <div style="border:1px solid ;height: 348px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;">
                        <form style="margin-top: 10px;width: 500px;height:200px" action="view.jsp" method="post">
                            <label style="font-size: 20px;margin-left: 70px">File Name</label>&nbsp;&nbsp;<input type="text" class="textbox" value="<%=b%>" readonly style="margin-left: 24px" name="fname"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">File Subject</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="textbox" value="<%=c%>" readonly style="margin-left: 7px"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">File Type</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="textbox" value="<%=d%>" readonly style="margin-left: 29px"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">File Size</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="textbox" value="<%=e%>&nbsp;Bytes" readonly style="margin-left: 36px"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Upload Date</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="textbox" value="<%=f%>" readonly/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Key</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="textbox" value="<%=k%>" readonly style="margin-left: 78px"/><br /><br />
                            <input type="submit" class="myButton" style="margin-left: 150px" value="View" />
                        </form>  
                    </div>
                </div>

            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>