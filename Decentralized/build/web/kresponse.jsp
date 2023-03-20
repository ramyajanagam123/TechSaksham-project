<%@page import="java.sql.ResultSet"%>
<%@page import="pack.mail_Senddd"%>
<%@page import="pack.TrippleDes"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    String email = null;
    Random r = new Random();
    int ii = r.nextInt(100000 - 5000) + 5000;
    String k = ii + "";
    String fn = request.getQueryString();
    System.out.println("The Value " + fn);
    String a = "Thisissparta";
    String b = new TrippleDes().encrypt(a);
    System.out.println("Skey"+b);
    
    Connection con = Db.getConnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    int i = st.executeUpdate("update kdc set pkey ='"+k+"',skey='"+b+"' where uid = '" + fn + "'");
    ResultSet rs =st1.executeQuery("select * from data where Name='"+fn+"' ");
    while(rs.next()){
       email= rs.getString("Email");
    }
    if (i != 0) {
        mail_Senddd.sendMail(new TrippleDes().encrypt(a), fn, email);
        response.sendRedirect("kdcdetails.jsp?Responsed");
    } else {
        response.sendRedirect("kdcdetails.jsp?Response Failed");
    }
%>