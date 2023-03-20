
<%@page import="javax.swing.JOptionPane"%>
<%@page import="pack.TrippleDes"%>
<%@page import="pack.Db"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String a = null, b = null, name=null, cipher =null;
    String getFile = session.getAttribute("x").toString();
    String skey =request.getParameter("skey");
    String pkey =request.getParameter("pkey");
    System.out.println("File name "+getFile);
    Connection con1 =Db.getConnection();
    Statement st1 = con1.createStatement();
    ResultSet rs1 = st1.executeQuery("select * from kdc");
    while(rs1.next()){
        a = rs1.getString("skey");
        b = rs1.getString("pkey");
    }
    if(a.equals(skey)&&b.equals(pkey))
    {
    Connection con = Db.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from files where filename = '" + getFile + "' ");
    while (rs.next()) {
        
        name = rs.getString("filename");
        cipher = rs.getString("data");
    }
    if(name.equals(getFile)){
    String plain = new TrippleDes().decrypt(cipher);
    byte[] data = plain.getBytes();
    if (data != null) {
        System.out.println("go>>>>>>>>>>");
        response.setContentType("image/jpg");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + name + "\"");
        OutputStream os = response.getOutputStream();
        os.write(data);
        os.close();
        data = null;
    }
         }else{
         out.println(" Database Error Occured....!");
         }
    }
    else
    {
        out.println("Wrong Decrypt Key or Secret Key");
        JOptionPane.showMessageDialog(null," Wrong Decrypt key");
    }
%>