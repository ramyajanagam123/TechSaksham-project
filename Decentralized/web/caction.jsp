<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%
    String a=session.getAttribute("c").toString();
    String r = request.getParameter("search");
    String b="Waiting";
    String s=null;
    Connection con = Db.getConnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    ResultSet rs = st1.executeQuery("select * from kdc where uid='"+a+"'");
            while(rs.next()){
                s= rs.getString("pkey");
            }
    if(s==null)
    {
   int i= st.executeUpdate("insert into kdc values('"+a+"','"+b+"','"+b+"','"+r+"')");
    
   if(i!=0)
   {
       response.sendRedirect("ckrequest.jsp?updated success");
   }
    }
    else
   {
       response.sendRedirect("ckrequest.jsp?Already Have Key");
   }
%>
