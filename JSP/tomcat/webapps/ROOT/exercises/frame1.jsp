<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<script>
function func1()
{
	parent.frame2.document.getElementById('td1').innerHTML=document.getElementById("usrname").value;
}

</script>
</head>

<body>
	<form>
	<table id="tab1">
		<tr>
			<td>Username : </td>
			<td><input type="text" id="usrname"> </td>
		</tr>
		<tr><td></td></tr>
		<tr>
			<td>Password : </td>
			<td><input type="text" id="pass"> </td>
		</tr>
		<tr><td></td></tr>
	</table>	
	<input type="button" value="Press" onclick="func1()">
	</form>
</body>
</html>