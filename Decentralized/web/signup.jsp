<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Decentralized</title>
        <meta name="keywords" content="free web template, sport center, CSS, HTML, 2 columns" />
        <meta name="description" content="Free Website Template - Sport Center" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <script>
            function check(input) {
                if (input.validity.typeMismatch) {
                    input.setCustomValidity("Dude '" + input.value + "' is not a valid email. Enter something nice!!");
                }
                else {
                    input.setCustomValidity("");
                }
            }
        </script>
    </head>
    <body>

        <div id="tmeplatemo_container">

            <div id="templatemo_header_01">
                <br />
                <center><label style="font-size: 35px">Decentralized Access Control with Anonymous Authentication <br /><br />of Data Stored in Clouds</label></center> 
            </div>	
            <div id="templatemo_menu">
                <ul>
                    <li><a href="index.jsp" class="current">Home</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="trustee.jsp">Trustee</a></li>
                    <li><a href="kdc.jsp">KDC</a></li>
                    <li><a href="admin.jsp">Admin</a></li>
                    <li><a href="signup.jsp" class="last">SignUp</a></li>
                </ul>    	
            </div> <!-- end of menu -->
            <div id="tmeplatemo_content"><br /><br /> 
                <div style="border: 1px solid blue;width: 500px;height: 429px;margin-left: 200px;border-radius: 20px;margin-top: -45px;background-image: url('images/login.png');">
                    <div style="border:1px solid ;border-top-right-radius: 20px;border-top-left-radius: 20px;">
                        <center><h1>Registration Form</h1></center>
                            <%
                                DateFormat df = new SimpleDateFormat("dd/MM/yy");
                                Date d = new Date();
                                String a = df.format(d);
                            %>

                    </div>
                    <div style="border:1px solid ;height: 375px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;">
                        <form style="margin-top: 10px;width: 500px;height:200px" action="signupaction.jsp" method="get">
                            <label style="font-size: 20px;margin-left: 70px">Name</label>&nbsp;&nbsp;<input type="text" class="textbox" placeholder="" required style="margin-left: 74px" name="name"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Password</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" class="textbox" required style="margin-left: 37px" name="pass"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Role</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <select name="role" class="textbox" required style="margin-left: 80px">
                                <option  selected>Select Role</option>
                                <option value="Creator">Creator</option>
                                <option value="Reader">Reader</option>
                                <option value="Writer">Writer</option>
                            </select><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;
                            <select name="gender" class="textbox" required style="margin-left: 55px">
                                <option  selected>Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Age</label><input type="text" class="textbox" required  style="margin-left: 100px" name="age"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Email</label><input type="Email" class="textbox"  required style="margin-left: 83px" name="email"/><br /><br />
                            <label style="font-size: 20px;margin-left: 70px">Current Date</label><input type="text" value="<%=a%>"class="textbox"  readonly style="margin-left: 20px" name="date"/><br /><br />
                            <input type="submit" class="myButton" style="margin-left: 100px" value="SignUp"/>
                            &nbsp; &nbsp; <input type="reset" class="myButton" />
                        </form>  
                    </div>
                </div>

            </div> <!-- end of content -->

            <div id="templatemo_footer"><br />
                <center><label> Copyright © 2014 <a href="#">Designed by KK</a></label> </center>
            </div> <!-- end of footer -->

        </div> <!-- end of container -->
</html>