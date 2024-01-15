<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information</title>
    <% 
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String host = "10.1.10.243";
            String dbName = "MTBDEV";
            int port = 1521;
            String oracleURL = "jdbc:oracle:thin:@" + host + ":" + port + ":" + dbName;
            String userName = "usmuser";
            String password = "usmuser";
            connection = DriverManager.getConnection(oracleURL, userName, password);

            String query = "SELECT EMP_FNAME, EMP_NAME, EMP_CUR_STATUS, EMP_SEX FROM HR_EMPLOYEE";
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);

    %>
</head>
<body>
    <div class="container">
        
        <table border="1">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Status</th>
                <th>Sex</th>
            </tr>

           
            <%
                while (resultSet.next()) {
                    String firstName = resultSet.getString("EMP_FNAME");
                    String lastName = resultSet.getString("EMP_NAME");
                    int status = resultSet.getInt("EMP_CUR_STATUS");
                    int sex = resultSet.getInt("EMP_SEX");

                    
                    String statusText = (status == 1) ? "Married" : "Single";
                    String sexText = (sex == 1) ? "Male" : "Female";
            %>
                <tr>
                    <td><%= firstName %></td>
                    <td><%= lastName %></td>
                    <td><%= statusText %></td>
                    <td><%= sexText %></td>
                </tr>
            <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                // Close JDBC resources
                try {
                    if (resultSet != null) resultSet.close();
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            %>
        </table>
    </div>
</body>
</html>
