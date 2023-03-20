<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    String a=session.getAttribute("e").toString();
    String r = request.getParameter("search");
    String b="Waiting";
    Connection con = Db.getConnection();
    Statement st = con.createStatement();
   int i= st.executeUpdate("insert into kdc values('"+a+"','"+b+"','"+b+"','"+r+"')");
   if(i!=0)
   {
       response.sendRedirect("wrequest.jsp?updated success");
   }
   else
   {
       response.sendRedirect("wrequest.jsp?updated failed");
   }
%>
