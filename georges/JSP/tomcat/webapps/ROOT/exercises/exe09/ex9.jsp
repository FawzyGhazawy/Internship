<html>
<head>
</head>
<body>
<%
try 
{
Class.forName("oracle.jdbc.driver.OracleDriver");
} 
catch ( ClassNotFoundException cnfe)
{
System.out.println("Error loading driver: " cnfe);
}
String host = "10.1.10.65";
String dbName = " BOBFIDEV ";
int port = 1521;
String oracleURL = "jdbc:oracle:thin:@" + host +":" + port + ":" + dbName;

String username = " usmuser ";
String password = " usmuser ";
Connection connection = DriverManager.getConnection(oracleURL,username,password);

Statement statement = connection.createStatement();

String query = "SELECT EMP_FNAME, EMP_NAME, EMP_CUR_STATUS, EMP_SEX FROM HR_EMPLOYEE";
ResultSet resultSet =statement.executeQuery(query);

while(resultSet.next()) {%>
<div>
<span><%=resultSet.getString(1)%></span>
<span><%=resultSet.getString(2)%></span>
<span><%=resultSet.getString(3)%></span>
</div>
<%}

%>
</body>
</html>