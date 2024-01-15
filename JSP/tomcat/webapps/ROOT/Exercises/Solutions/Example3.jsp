<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3rd Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 50px;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Visit Counter</h1>
        <%
            Integer totalVisits = (Integer) session.getAttribute("visitCounter");

            if (totalVisits == null) {
                totalVisits = 1;
                session.setAttribute("visitCounter", totalVisits);
        %>
                <p>Welcome Visitor</p>
        <%
            } else {
                totalVisits += 1;
                session.setAttribute("visitCounter", totalVisits);
        %>
                <p>You have visited this page <%= totalVisits %> time(s)</p>
        <%
            }
        %>
    </div>
</body>
</html>
