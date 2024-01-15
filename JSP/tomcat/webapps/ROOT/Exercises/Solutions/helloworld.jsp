<html>
<head>
    <title>My First JSP Page</title>
</head>
<body>
    <%
        String message = "Hello World";
    %>
    <div>
        <%= message %>
        <br>
        <%= new java.util.Date() %>
    </div>
</body>
</html>
