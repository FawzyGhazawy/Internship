<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Random Bulleted List</title>
</head>
<body>
	 <h1>Random Bulleted List</h1>
	 
	 
	 <ul style="list-style-type: square;">
	 
	  <% for (int i = 1; i <= ( (int) (Math.random() * 20) + 1); i++) {
	   int randomnumber = ((int) (Math.random() * 100) + 1);
	   %>
	   <li>random number <%= i %> = <%= randomnumber %></li>
	   <%
            }
        %>
	 
	 
	  
</ul>

</body>
</html>