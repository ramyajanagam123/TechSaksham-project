package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>Decentralized</title>\n");
      out.write("        <meta name=\"keywords\" content=\"free web template, sport center, CSS, HTML, 2 columns\" />\n");
      out.write("        <meta name=\"description\" content=\"Free Website Template - Sport Center\" />\n");
      out.write("        <link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"tmeplatemo_container\">\n");
      out.write("\n");
      out.write("            <div id=\"templatemo_header_01\">\n");
      out.write("                <br />\n");
      out.write("                <center><label style=\"font-size: 35px\">Decentralized Access Control with Anonymous Authentication <br /><br />of Data Stored in Clouds</label></center> \n");
      out.write("            </div>\t\n");
      out.write("            <div id=\"templatemo_menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"index.jsp\" class=\"current\">Home</a></li>\n");
      out.write("                    <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                    <li><a href=\"trustee.jsp\">Trustee</a></li>\n");
      out.write("                    <li><a href=\"kdc.jsp\">KDC</a></li>\n");
      out.write("                    <li><a href=\"admin.jsp\">Admin</a></li>\n");
      out.write("                    <li><a href=\"singup.jsp\" class=\"last\">SignUp</a></li>\n");
      out.write("                </ul>    \t\n");
      out.write("            </div> <!-- end of menu -->\n");
      out.write("            <div id=\"tmeplatemo_content\"><br /><br /> \n");
      out.write("                <div style=\"border: 1px solid blue;width: 500px;height: 280px;margin-left: 200px;border-radius: 20px;background: whitesmoke\">\n");
      out.write("                    <div style=\"border:1px solid red;border-top-right-radius: 20px;border-top-left-radius: 20px;background-image: url('images/login.jpg');color: blue\">\n");
      out.write("                        <center><h1>Login Page</h1></center>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"border:1px solid #000000;height: 226px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;background-image: url('images/img.jpg')\">\n");
      out.write("                        <form style=\"border: 1px solid yellow;margin-top: 50px;width: 100px\">\n");
      out.write("                        Username<input type=\"text\" class=\"textbox\"/><br />\n");
      out.write("                        Password<input type=\"text\" class=\"textbox\"/><br />\n");
      out.write("                        <input type=\"submit\" />\n");
      out.write("                        <input type=\"reset\" />\n");
      out.write("                    </form>  \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div> <!-- end of content -->\n");
      out.write("\n");
      out.write("            <div id=\"templatemo_footer\"><br />\n");
      out.write("                <center><label> Copyright © 2014 <a href=\"#\">Designed by KK</a></label> </center>\n");
      out.write("            </div> <!-- end of footer -->\n");
      out.write("\n");
      out.write("        </div> <!-- end of container -->\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
