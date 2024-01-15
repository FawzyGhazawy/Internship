<!DOCTYPE html>
<html>
<head>
<%@ page import="java.util.Random" %>
<%@ page import="com.exercises.ColorGenerator" %>

<%
    ColorGenerator colorGenerator = new ColorGenerator();
    String backgroundColor = colorGenerator.getRandomColor();
%>
    <title>Login Page</title>
    <style>
        body {
            background-color: <%= backgroundColor %>;
        }
    </style>
</head>
<body>
    <form action="exe04submit.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name_id" name="name_name" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password_id" name="password_name" required><br><br>
        
        <label for="age">Age:</label>
        <input type="text" id="age_id" name="age_name" required><br><br>
        
        <label for "sex">Sex:</label>
        <input type="radio" id="male_id" name="sex_name" value="male" required>Male
        <input type="radio" id="female_id" name="sex_name" value="female" required>Female<br><br>
        
        <label for="address">Address:</label>
        <textarea name="address_name" id="address_id" rows="4" cols="50" placeholder="Enter your address"></textarea><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
