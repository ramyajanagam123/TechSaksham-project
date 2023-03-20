<%@page import="java.sql.Date"%>
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
                    <li><a href="adminhome.jsp" class="current">Home</a></li>
                    <li><a href="adminview.jsp">User Details</a></li>
                    <li><a href="index.jsp" class="last">Log Out</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"><br /><br /> 
                <table border="1" style="margin-left: -40px;margin-top: 30px">
                    <tr>
                        <th>NAME</th>
                        <th>PASSWORD</th>
                        <th>ROLE</th>
                        <th>GENDER</th>
                        <th>AGE</th>
                        <th>EMAIL</th>
                        <th>REGISTERED DATE</th>
                    </tr>
                    <%
                        try{
                        String n=null;
                        String p=null;
                        String r=null;
                        String g=null;
                        String a=null;
                        String e=null;
                        Date d=null;
                        Connection con =Db.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select * from data");
                        while(rs.next())
                        {
                          n=rs.getString("Name");
                          p=rs.getString("Pass");
                          r=rs.getString("Role");
                          g=rs.getString("Gender");
                          a=rs.getString("Age");
                          e=rs.getString("Email");
                          d=rs.getDate("CDate");
                        %>
                        <tr>
                            <td><%=n%></td>
                            <td><%=p%></td>
                            <td><%=r%></td>
                            <td><%=g%></td>
                            <td><%=a%></td>
                            <td><%=e%></td>
                            <td><%=d%></td>
                          
                        </tr>
                        <% }}
                        catch(Exception e)
                        {
                            System.out.println("Execption Error in Admin View"+e.getMessage());
                        }                        
                    %>
                </table>
                
            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>