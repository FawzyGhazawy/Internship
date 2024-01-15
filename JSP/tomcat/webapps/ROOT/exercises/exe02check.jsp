<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Result</title>
</head>
<body style=" display: flex; justify-content: center; align-items: center; height: 100vh;">
<div style="text-align: center;">
    <%
        String username = request.getParameter("username_name");
        String password = request.getParameter("password_name");

        if (username != null && password != null && username.equals("secure") && password.equals("pass")) {
    %>
        <h1 style="text-align: center;">Successful Login</h1>
    <%
        } else {
    %>
        <h1 style="text-align: center;">Login Failed</h1>
    <%
        }
    %>
    </div>
</body>
</html>
