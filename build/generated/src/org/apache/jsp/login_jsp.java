package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("\t<title></title>\n");
      out.write("\t<style type=\"text/css\">\n");
      out.write("\t\tbody\n");
      out.write("\t\t{\n");
      out.write("\t\t\tbackground-image: url(\"images/mainimage4.jpg\");\n");
      out.write("\t\t\tbackground-size: 100% 100%;\n");
      out.write("\t\t\tbackground-attachment: fixed;\n");
      out.write("\t\t}\n");
      out.write("\t\t#d1\n");
      out.write("\t\t{\n");
      out.write("\tmargin-left: 500px;\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t}\n");
      out.write("\t\theader\n");
      out.write("\t\t{\n");
      out.write("\t\t\tcolor: yellow;\n");
      out.write("\t\t}\n");
      out.write("@font-face {\n");
      out.write("  font-family: naturebeauty;\n");
      out.write("  src: url('fonts/NatureBeautyPersonalUse-9Y2DK.ttf');\n");
      out.write("}\n");
      out.write("\n");
      out.write("\theader\n");
      out.write("\t\t{\n");
      out.write("\t\t\tcolor: yellow;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\theader span\n");
      out.write("\t\t{\n");
      out.write("\t\t\tmargin: 10px;\n");
      out.write("\t\t\tcolor: blue;\n");
      out.write("\t\t\tfont-family:naturebeauty;\n");
      out.write("\t\t\tletter-spacing: -10px;\n");
      out.write("\t\t\tfont-size: 50px;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<header>\n");
      out.write("\t\t<h1><span>AM</span>Restaurant </h1><br>\n");
      out.write("\t\t<p style=\"font-size:25px; color: white; margin-top:-40px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Legendary taste of Chidambaram</i></p>\n");
      out.write("\t</header>\n");
      out.write("\n");
      out.write("\t<div style=\"width: 600px; height: 350px; background-color: rgba(195, 195, 195, 0.8);\" id=\"d1\">\n");
      out.write("\t\t<h1 align=\"center\" ><i>LOGIN </i></h1>\n");
      out.write("                <form id=\"f1\" name=\"f1\" action=\"login_confirm.jsp\">\n");
      out.write("                    <table align=\"center\" style=\"font-size: 25px;\">\n");
      out.write("                        <tr><td>Login ID:</td><td><input type=\"text\" name=\"t1\" id=\"t1\"></td></tr>\n");
      out.write("                        <tr><td>Password:</td><td><input type=\"password\" name=\"p1\" id=\"p1\"></td></tr>\n");
      out.write("                    </table><br><br>\n");
      out.write("                    <div align=\"center\"><input type=\"submit\" name=\"s1\" id=\"s1\" value=\"Login\" style=\"width:80px; height:40px; background-color:lightgreen; border-radius: 5px; border-color:lightgreen;\">&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <input type=\"reset\" name=\"b1\" id=\"b1\" value=\"cancel\" style=\"width:80px; height:40px; background-color:orange; border-radius:5px; border-color: orange;\"></div>\n");
      out.write("                    <p align=\"center\" style=\"font-size:20px;\">If don't have account?<a href=\"register.jsp\">Register</a></p>\n");
      out.write("                    \n");
      out.write("                </form>       \n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
