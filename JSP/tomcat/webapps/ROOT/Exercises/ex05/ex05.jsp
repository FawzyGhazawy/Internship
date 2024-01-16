<%@ page import="java.util.Random" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>

<%
    
    Random rand = new Random();
    int red = rand.nextInt(255);
    int green = rand.nextInt(255);
    int blue = rand.nextInt(255);

    
    String hexColor = String.format("#%02x%02x%02x", red, green, blue);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Random Background Color</title>
    <style>
        body {
            background-color: <%= hexColor %>;
        }
    </style>
</head>
<body>
    <h1>Welcome to My Page</h1>
    <p>This page has a random background color that changes on refresh.</p>
</body>
</html>
