<%
    try{
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    if(user.equalsIgnoreCase("Trustee")&&pass.equalsIgnoreCase("Trustee"))
    {
        response.sendRedirect("trusteeview.jsp?msg=Login Successfully");
        System.out.println("Success");
    }
    else{
        response.sendRedirect("trustee.jsp?msg=Login Failed");
        System.out.println("Failed");
    }
    }
    catch(Exception e)
    {
        System.out.println("Exception Error"+e.getMessage());
    }
%>