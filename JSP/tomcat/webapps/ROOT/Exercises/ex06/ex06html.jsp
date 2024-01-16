<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Page</title>
</head>

<body>
    <div class="container">
        <h1>Form Page</h1>
        <form action="ex06.jsp" method="post">
            <table border="border">
                <th>
                    <label for="name">Name:</label>
                </th>
                <th>Present</th>
                <th>Time</th>
                <%
                    
                    String[] names = {"Carene", "Nadine", "Rana", "Claude", "Michael"};

                    
                    for (String name : names) {
                %>
                <tr>
                    <td><%= name %></td>
                    <td><input type="checkbox" name="present_<%= name %>" /></td>
                    <td><input type="time" name="time_<%= name %>" placeholder="Enter your time"></td>
                </tr>
                <%
                    }
                %>
            </table>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>

</html>
