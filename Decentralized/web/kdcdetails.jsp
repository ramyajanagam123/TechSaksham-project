<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
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
                    <li><a href="kdcview.jsp" class="current">Home</a></li>
                    <li><a href="kdcdetails.jsp">Request Details</a></li>
                    <li><a href="index.jsp" class="last">Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"><br /><br /> 
              <div style="margin-left: 100px  ">
                  <table border="1" style="margin-left: 80px;margin-top: 20px">
                        <tr>
                            <th>User Id</th>
                            <th>Pkey</th>
                            <th>Skey</th>
                            <th>Response</th>
                        </tr>
                        <%
                            try {
                                String fn = null;
                                String fs = null;
                                String ft = null;
                                
                                Connection con = Db.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from kdc ");
                                while (rs.next()) {
                                    fn = rs.getString("uid");
                                    fs = rs.getString("pkey");
                                    ft = rs.getString("skey");%>
                        <tr>
                            <td><%=fn%></td>
                            <td><%=fs%></td>
                            <td><%=ft%></td>
                            <td><a href="kresponse.jsp?<%=fn%>" style="text-decoration: none">Response</a></td>
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
                <center><label> Copyright � 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>