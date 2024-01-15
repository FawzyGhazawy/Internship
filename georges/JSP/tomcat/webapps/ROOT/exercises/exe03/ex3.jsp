<html>
<head>
	<title>JSP Exercise 3</title>
</head>
<body>
<label for="param1"> Param1</label>
<input type="text" name="param1" id="param1"/>
<label for="param2"> Param2</label>
<input type="text" name="param2" id="param2"/>
<label for="param3"> Param3</label>
<input type="text" name="param3" id="param3"/>
<input type="button" name="btn" onclick="onClick()" id="btn" value="Submit"/>
<p id="p1"></p>
<p id="p2"></p>
<p id="p3"></p>
</body>
<script>

function onClick(){
	alert("1");
	var p1= document.getElementById("param1");
	var p2= document.getElementById("param2");
	var p3= document.getElementById("param3");
	
	<%
	String p1=request.getParameter("param1");
	String p2=request.getParameter("param2");
	String p3=request.getParameter("param3");
	System.out.println(p3);
	%>
	p1.innerHTML = <%= p1 %>
	p2.innerHTML = <%= p2 %>
	p3.innerHTML = <%= p3 %>
}
</script>