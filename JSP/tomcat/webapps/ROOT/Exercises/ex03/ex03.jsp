<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 3</title>
</head>
<body>
    <div class="container">
        <h1>Display Form Parameters</h1>

        <%
            String param1 = request.getParameter("param1");
            String param2 = request.getParameter("param2");
            String param3 = request.getParameter("param3");
        %>

        <p>Value of param1: <%= param1 %></p>
        <p>Value of param2: <%= param2 %></p>
        <p>Value of param3: <%= param3 %></p>
    </div>
</body>
</html>
