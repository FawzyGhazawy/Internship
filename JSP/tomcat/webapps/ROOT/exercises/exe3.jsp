<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Emp Info</title>
</head>
<body>
    <h1>Emp Info :</h1>
    
    <table border="1">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Sex</th>
            <th>Status</th>
        </tr>
        <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
        <%@ page import="java.util.*" %>
        <%@ page isErrorPage="true" %>
        
        <%!
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
        %>
        
        <%
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
        %>
        <tr>
            <td><%= firstname %></td>
            <td><%= lastname %></td>
            <td><%= sex %></td>
            <td><%= status %></td>
        </tr>
        <%
                }
            } catch (Exception ex) {
                ex.printStackTrace();
                
            } finally {
                closeConnection(connection);
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
            }
        %>
    </table>
</body>
</html>
