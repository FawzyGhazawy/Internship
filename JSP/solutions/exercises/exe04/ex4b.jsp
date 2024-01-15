<html>
<head>
</head>
<body>
<%
String name= (String)session.getAttribute("name");  
String password= (String)session.getAttribute("password"); 
String age = (String)session.getAttribute("age"); 
String sex = (String)session.getAttribute("sex"); 
String address = (String)session.getAttribute("address"); 
%>
<p>Name: <%=name%>  </p>
<p>Password: <%=password%> </p>
<p>Age: <%=age%> </p>
<p>Sex: <%=sex%> </p>
<p>Address: <%=address%> </p>
</body>
</html>