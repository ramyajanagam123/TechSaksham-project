<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    try{
        if(user.equalsIgnoreCase("Kdc")&&pass.equalsIgnoreCase("Kdc"))
        {
            response.sendRedirect("kdcview.jsp?Login Successfully");
       }
        else
        {
            response.sendRedirect("kdc.jsp?Login Failed");
        }
    }
    catch(Exception e)
    {
        System.out.println("Error in Kdc Action"+e.getMessage());
    }
%>