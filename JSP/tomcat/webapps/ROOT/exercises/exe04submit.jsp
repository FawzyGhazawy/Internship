<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Show user info</title>
</head>
<body >
<div style="text-align: center;">
    <%
        String name = request.getParameter("name_name");
        String pass = request.getParameter("password_name");
        String age = request.getParameter("age_name");
        String sex = request.getParameter("sex_name");
        String address = request.getParameter("address_name");

       
    %>
        
   		 
   		 <table border="1">
    <tr>
        <th>Name</th>
        <th>Password</th>
        <th>Age</th>
        <th>Sex</th>
        <th>Address</th>
    </tr>
    <tr>
        <td><%= name %></td>
        <td><%= pass %></td>
        <td><%= age %></td>
        <td><%= sex %></td>
        <td><%= address %></td>
    </tr>
   
</table>
   		 
   		 
    </div>
</body>
</html>
