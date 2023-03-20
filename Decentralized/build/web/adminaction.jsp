<%@page import="javax.swing.JOptionPane"%>
<%
     try{
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    if(user.equalsIgnoreCase("Admin")&&pass.equalsIgnoreCase("Admin"))
    {
        response.sendRedirect("adminhome.jsp?msg=Login Successfully");
        System.out.println("Success");
    }
    else{
        response.sendRedirect("admin.jsp?msg=Login Failed");
        System.out.println("Failed");
        JOptionPane.showMessageDialog(null,"Login Failed");
    }
    }
    catch(Exception e)
    {
        System.out.println("Exception Error in Admin"+e.getMessage());
    }
%>
