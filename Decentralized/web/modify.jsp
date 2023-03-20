<%@page import="pack.TrippleDes"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    String fname = request.getParameter("filename");
    System.out.println("File Name "+fname);
    String a = request.getParameter("modify");
    out.println("Content "+a);
    Connection con = Db.getConnection();
    Statement st = con.createStatement();
    String x = new TrippleDes().encrypt(a);
    int i= st.executeUpdate("update files set  data='"+x+"' where filename='"+fname+"'");
    if(i!= 0)
    {
        response.sendRedirect("wfiledetails.jsp?Modified");
    }
    else
    {
        response.sendRedirect("wfiledetails.jsp?Error in Modify data");
    }
  
%>