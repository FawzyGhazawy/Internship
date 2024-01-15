<html>
<%@ page import ="java.sql.*"%>
<%@ page import ="java.io.*"%>
<%@ page import ="java.util.*"%>
<%!

public Connection getConnection()
{
  Connection con = null;
  try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@10.1.1.40:1521:traindb", "refuser", "refuser");
  }
  catch(Exception ex)
  {ex.printStackTrace();}
  finally
  {
    return con;
  }
}

public void closeConnection(Connection con){
  try{
    if(con!=null)
      con.close();
  }catch (Exception ex) {ex.printStackTrace();}
}

%>
</html>