<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 3</title>
</head>
<body>
    <div class="container">
        <h1>Display Form Table</h1>

        <%
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String age = request.getParameter("age");
            String sex = request.getParameter("gender");
            String address = request.getParameter("address");
        %>

    <table border="border">
    <th>Name:</th>
    <th>Password:</th>
    <th>Age:</th>
    <th>Sex:</th>
    <th>Address:</th>
    <tr>
    <td><%= name %></td>
    <td><%= password %> </td>
    <td> <%= age %></td>
    <td><%= sex %> </td>
    <td> <%= address %></td>
    </tr>
    </table>
    </div>
</body>
</html>
