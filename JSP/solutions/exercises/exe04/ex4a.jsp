<html>  
<body>  
<form action="exercises/exe04/ex4b.jsp">  
<label for="name">Name:</label>
<input type="text" id="name" name="name">
<br>
<label for="password">Password:</label>
<input type="password" id="password" name="password">
<br>
<label for="age">Age</label>
<input type="text" id="age" name="age">
<br>
<input type ="radio" id="male" name="sex" value="Male"> Male 
<input type ="radio" id="female" name="sex" value="Female"> Female <br>
<label for="address">Address</label>
<input type="textarea" id="address" name="address">
<%
String name = request.getParameter("name");
String password = request.getParameter("password");
String age = request.getParameter("age");
String sex = request.getParameter("sex");
String address = request.getParameter("address");
session.setAttribute("name", name);
session.setAttribute("password", password);
session.setAttribute("age", age);
session.setAttribute("sex", sex);
session.setAttribute("address", address);
%>
<input type="submit" value="go"><br/>
</form>  
</body>  
</html>  