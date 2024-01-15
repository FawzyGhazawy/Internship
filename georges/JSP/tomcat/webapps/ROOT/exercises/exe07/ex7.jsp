<html>
<%@ page import="java.lang.*"%>
<head>
</head>
<body>

<ul>

</ul>
</body>
<script>
<%
int numb = (int)(Math.random()*50);
int variable;
int i;
System.out.println(numb);
for( i=0 ; i< numb ; i++){
	variable = (int)(Math.random()*50);%>
	ul.innerHTML+= "<li><%=variable%></li>";
	alert(ul.innerHTML);
<%}
%>
</script>
</html>