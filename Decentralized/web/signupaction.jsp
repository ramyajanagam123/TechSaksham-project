<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String role = request.getParameter("role");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
    String email = request.getParameter("email");
    String date = request.getParameter("date");
    try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int i = st.executeUpdate("insert into data values('"+name+"','"+pass+"','"+role+"','"+gender+"','"+age+"','"+email+"','"+date+"','NO','Waiting')");
       if(i!= 0)
       {
          response.sendRedirect("signup.jsp?Registration Successfully");
       }
       else
       {
           response.sendRedirect("signup.jsp?Registration Failed");
       }
    }
    catch(Exception e)
    {
        System.out.println("Error in signupction"+e.getMessage());
    }
%>