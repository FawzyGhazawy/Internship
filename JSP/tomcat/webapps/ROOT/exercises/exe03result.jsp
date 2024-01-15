<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Show 3 param thrue request</title>
</head>
<body >
<div style="text-align: center;">
    <%
        String param1 = request.getParameter("param1");
        String param2 = request.getParameter("param2");
        String param3 = request.getParameter("param3");

       
    %>
         <p>param1: <%= param1 %></p><br>
   		 <p>param2: <%= param2 %></p><br>
   		 <p>param3: <%= param3 %></p><br>
    </div>
</body>
</html>
