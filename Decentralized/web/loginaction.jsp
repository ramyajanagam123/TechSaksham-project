<%@page import="java.sql.Statement"%>
<%@page import="pack.Db"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    try{
        String role=null;
        String name=null;
        String password=null;
        Connection con = Db.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from data where pass='"+pass+"'");
        while(rs.next())
        {
           name = rs.getString("Name");
           password = rs.getString("Pass");
           role = rs.getString("Role");
        }
        if(user.equals(name)&&pass.equals(password)&&role.equals("Creator"))
        {
            response.sendRedirect("creatorview.jsp?Login Successfully");
            session.setAttribute("c", user);
        }
        else if(user.equals(name)&&pass.equals(password)&&role.equals("Reader"))
        {
            response.sendRedirect("readerhome.jsp?Login Successfully");
            session.setAttribute("d", user);
        }
        else if(user.equals(name)&&pass.equals(password)&&role.equals("Writer"))
        {
            response.sendRedirect("writerview.jsp?Login Successfully");
            session.setAttribute("e", user);
        }
        else
        {
            response.sendRedirect("login.jsp?Login Failed");
        }
    }
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
%>