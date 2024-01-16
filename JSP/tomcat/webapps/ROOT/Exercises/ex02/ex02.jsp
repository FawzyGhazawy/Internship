<%@ page import="java.io.*,java.util.*" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    
    if (request.getMethod().equalsIgnoreCase("post")) {
        String inUser = request.getParameter("username");
        String inPass = request.getParameter("password");

        if ("secure".equals(inUser) && "pass".equals(inPass)) {
            response.sendRedirect("ex02Success.jsp");
            return;  
        } else {
            out.println("Wrong inputs");
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 2</title>
</head>
<body>
    <div class="container">
        <form action="<%= request.getRequestURI() %>" method="post">
            <input type="text" id="username" name="username" placeholder="Enter your username">
            <br><br>
            <input type="password" id="password" name="password" placeholder="Enter your password">
            <br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
