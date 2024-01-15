

<%@ page contentType=" text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>

<%
    // Get the user-specific visit count
    Integer userVisitCount = (Integer) session.getAttribute("userVisitCount");
    
    // If it's the user's first visit, initialize the count to 0
    if (userVisitCount == null) {
        userVisitCount = 0;
    }

    // Increment the user-specific visit count
    userVisitCount++;

    // Update the session attribute with the new user-specific count
    session.setAttribute("userVisitCount", userVisitCount);

    // Get the total visit count for all users
    Integer totalVisitCount = (Integer) application.getAttribute("totalVisitCount");

    // If it's the first visit by any user, initialize the count to 0
    if (totalVisitCount == null) {
        totalVisitCount = 0;
    }

    // Increment the total visit count
    totalVisitCount++;

    // Update the application attribute with the new total count
    application.setAttribute("totalVisitCount", totalVisitCount);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visit Counter</title>
</head>
<body>
    <h1>Visit Counter</h1>
    <p>Number of visits for the current user: <%= userVisitCount %></p>
    <p>Total number of visits by all users: <%= totalVisitCount %></p>
</body>
</html>
