/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.37
 * Generated at: 2023-08-25 06:50:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frame1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Frame 1</title>\r\n");
      out.write("<script src=\"/script.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<label for=\"column\" style=\"margin-left:3%;margin-top:2%;width:10%;height:6%;\">Column</label>\r\n");
      out.write("<SELECT ID=\"column\" name=\"column\"  style=\"margin-left:1%; margin-top:2%; width:20%; height:6%; text-align: center\">\r\n");
      out.write("\t<OPTION id =\"none\" name=\"none\" SELECTED>  </OPTION>\r\n");
      out.write("\t<OPTION id =\"empid\" name=\"empid\" value=\"Employee Id\"> Employee Id </OPTION>\r\n");
      out.write("\t<OPTION id =\"empiname\" name=\"empname\" value=\"Employee Name\"> Employee Name </OPTION>\r\n");
      out.write("\t<OPTION id =\"empadd\" name=\"empadd\" value=\"Employee Address\"> Employee Address </OPTION>\r\n");
      out.write("\t<OPTION id =\"empnum\" name=\"empnum\" value=\"Employee Phone Number\"> Employee Phone Number </OPTION>\r\n");
      out.write("\t<OPTION id =\"empage\" name=\"empage\" value=\"Employee Age\"> Employee Age </OPTION>\r\n");
      out.write("</SELECT>\r\n");
      out.write("\r\n");
      out.write("<label for=\"condition\" style=\"margin-left:3%;margin-top:2%;width:10%;height:6%;\">Condition</label>\r\n");
      out.write("<SELECT ID=\"condition\" name=\"condition\"  style=\"margin-left:1%; margin-top:2%; width:20%; height:6%; text-align: center\">\r\n");
      out.write("\t<OPTION id =\"none\" name=\"none\" SELECTED>  </OPTION>\r\n");
      out.write("\t<OPTION id =\"contains\" name=\"contains\" value=\"contains\"> Contains </OPTION>\r\n");
      out.write("\t<OPTION id =\"start\" name=\"start\" value=\"Start With\"> Start With: </OPTION>\r\n");
      out.write("</SELECT>\r\n");
      out.write("\r\n");
      out.write("<label for=\"value\" style=\"margin-left:3%;margin-top:2%;width:10%;height:6%;\">Value</label>\r\n");
      out.write("<input type=\"text\" id=\"value\" name=\"value\" style=\"margin-left:1%;margin-top:2%;width:15%;height:6%;\"/>\r\n");
      out.write("<input type=\"button\" id=\"search\" name=\"search\" style=\"margin-left:2%;margin-top:2%;width:8%;height:6%\" value=\"Search\" onclick=\"onClick()\"/>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
