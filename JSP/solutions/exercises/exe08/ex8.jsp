
<html>
<head>
    <title>Exercise 8</title>
</head>
<body>
    <h1>Visit Counter</h1>
    
    
    <%
    int userCount = 0;
    int totalCount = 0;
    
    HttpSession session = request.getSession(true);
    Integer userCount1 = (Integer) session.getAttribute("userCount");
    if (userCount1 != null) {
        userCount = userCount1;
    }
    javax.servlet.ServletContext application = request.getServletContext();
    Integer totalCount1 = (Integer) application.getAttribute("totalCount");
    if (totalCount1 != null) {
        totalCount = totalCount1;
    }
    userCount++;
    totalCount++;
    session.setAttribute("userCount", userCount);
    application.setAttribute("totalCount", totalCount);
    %>
    
    <p>Your visit count: <%= userCount %></p>
    <p>Total visit count: <%= totalCount %></p>
</body>
</html>