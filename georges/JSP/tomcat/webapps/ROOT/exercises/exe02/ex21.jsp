<html>
<head>
<title>Second Exercise</title>
</head>
<style>
h1{
	color: red;
	text-align: center;
}
</style>
<body>
<label for="username">Username:</label>
<input type="text" id='username'/>
<label for="password">Password:</label>
<input type="text" id='password'/>
<input type='button' id='btn' value='login' onclick='onClick()'/>

</body>
<script>
<%
String username="secure";
String password= "pass";
%>
function onClick(){
var username = document.getElementById("username").value;-->
var password = document.getElementById("password").value;
if(username==<%=username%> && password==<%=password%>){

window.location ="exercises/exe02/ex12b.jsp";
}
else{
alert("I am good");
}
}
</script>
</html>