/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.37
 * Generated at: 2023-08-25 06:49:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.exercises.exe_005feval;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frame2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("</head>\r\n");
      out.write("<style>\r\n");
      out.write("td{\r\n");
      out.write("\tborder-style: solid;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("table{\r\n");
      out.write("\twidth:90%;\r\n");
      out.write("\tmargin:0 5%;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<script src=\"exercises\\exe_eval\\script.js\"></script>\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>Employee Id</td>\r\n");
      out.write("<td>Employee Name</td>\r\n");
      out.write("<td>Employee Address</td>\r\n");
      out.write("<td>Employee Phone Number</td>\r\n");
      out.write("<td>Employee Age</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td name=\"1\">1</td>\r\n");
      out.write("<td name=\"2\">George Chalfoun</td>\r\n");
      out.write("<td name=\"3\">Bsarma</td>\r\n");
      out.write("<td name=\"4\">70199887</td>\r\n");
      out.write("<td name=\"5\">26</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td name=\"1\">2</td>\r\n");
      out.write("<td name=\"2\">Joseph Khawly</td>\r\n");
      out.write("<td name=\"3\">Kfar Aaqa</td>\r\n");
      out.write("<td name=\"4\">71009765</td>\r\n");
      out.write("<td name=\"5\">22</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<input type=\"button\" id=\"add\" name=\"add\" style=\"margin-top:1%;width:8%;height:6%\" value=\"Add\" onclick=\"onAdd()\"/>\r\n");
      out.write("<input type=\"button\" id=\"Modify\" name=\"Modify\" style=\"margin-top:1%; margin-left:2% ; width:8%;height:6%\" value=\"Modify\" onclick=\"onAdd()\"/>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function onAdd(){\r\n");
      out.write("   var employeeName = document.getElementById(\"employeeName\").value;\r\n");
      out.write("}\r\n");
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
