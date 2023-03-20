<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    Random r = new Random();
    int ii = r.nextInt(100000 - 50000) + 50000;
    String k = ii + "";
    String a = request.getQueryString();
    System.out.println("The Value " + a);
    Connection con = Db.getConnection();
    Statement st = con.createStatement();
    int i = st.executeUpdate("update request set KeyValue ='"+k+"' where id = '" + a + "'");
    if (i != 0) {
        response.sendRedirect("trusteedetails.jsp?Responsed");
    } else {
        response.sendRedirect("trusteedetails.jsp?Response Failed");
    }
%>