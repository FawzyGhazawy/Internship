/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.37
 * Generated at: 2023-10-24 06:11:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.exercises;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class exe3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String jdbcUrl = "jdbc:oracle:thin:@10.1.10.243:1521:MTBDEV";
            String username = "usmuser";
            String password = "usmuser";
            
            Connection getConnection() {
                Connection connection = null;
                try {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    connection = DriverManager.getConnection(jdbcUrl, username, password);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                return connection;
            }
            
            void closeConnection(Connection con) {
                try {
                    if (con != null)
                        con.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        
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
    java.lang.Throwable exception = org.apache.jasper.runtime.JspRuntimeLibrary.getThrowable(request);
    if (exception != null) {
      response.setStatus(javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Emp Info</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <h1>Emp Info :</h1>\r\n");
      out.write("    \r\n");
      out.write("    <table border=\"1\">\r\n");
      out.write("        <tr>\r\n");
      out.write("            <th>First Name</th>\r\n");
      out.write("            <th>Last Name</th>\r\n");
      out.write("            <th>Sex</th>\r\n");
      out.write("            <th>Status</th>\r\n");
      out.write("        </tr>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        ");

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            
            try {
                connection = getConnection();
                String query = "SELECT EMP_FNAME, EMP_NAME, EMP_CUR_STATUS, EMP_SEX FROM HR_EMPLOYEE";
                statement = connection.createStatement();
                resultSet = statement.executeQuery(query);

                while (resultSet.next()) {
                    String firstname = resultSet.getString("EMP_FNAME");
                    String lastname = resultSet.getString("EMP_NAME");
                    int sexnum = resultSet.getInt("EMP_SEX");
                    String sex;
                    if (sexnum == 1) {
                        sex = "Male";
                    } else if (sexnum == 2) {
                        sex = "Female";
                    } else {
                        sex = "Not defined";
                    }
                    int statusnum = resultSet.getInt("EMP_CUR_STATUS");
                    String status;
                    if (statusnum == 1) {
                        status = "Married";
                    } else if (statusnum == 2) {
                        status = "Single";
                    } else {
                        status = "Not defined";
                    }
        
      out.write("\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>");
      out.print( firstname );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print( lastname );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print( sex );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print( status );
      out.write("</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        ");

                }
            } catch (Exception ex) {
                ex.printStackTrace();
                
            } finally {
                closeConnection(connection);
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
            }
        
      out.write("\r\n");
      out.write("    </table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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