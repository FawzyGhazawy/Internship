<html>
<head>
</head>
<body>
</body>
<form action="exercises/exe06/ex6b.jsp">
<table>
<tr>
<td>
Carine
</td>
<td>
<input type="radio" id="1" name="1" value="Carine">
</td>
<td>
<input type="time" id="2" name="1" value="">
</td>
</tr>
<tr>
<td>
Nadine
</td>
<td>
<input type="radio" id="1" name="2" value="Nadine">
</td>
<td>
<input type="time" id="2" name="2" value="">
</td>
</tr>
<tr>
<td>
Rana
</td>
<td>
<input type="radio" id="1" name="3" value="Rana">
</td>
<td>
<input type="time" id="2" name="3" value="">
</td>
</tr>
<tr>
<td>
Claude
</td>
<td>
<input type="radio" id="1" name="4" value="Claude">
</td>
<td>
<input type="time" id="2" name="4" value="">
</td>
</tr>
<tr>
<td>
Michael
</td>
<td>
<input type="radio" id="1" name="5" value="Michael">
</td>
<td>
<input type="time" id="2" name="5" value="">
</td>
</tr>

</table>
<input type="submit" value="Submit" onclick="onClick()">
</form>
</body>
<script>
<%int i;
int j;
String p;
String a;
String p1;
String a1;
String present;
String absent;
String retrieve;%>
function onClick(){
var i = 1;
var j = 1;
var z = 0;
var radios = document.getElementById("1");
var time = document.getElementById("2");
radios.forEach(function(radio){
	var value = radio.value;
	var t = time[z].value
	if (radio.checked){
		var p = i.toString();
		var pid = "p" + p;
		var tid = "t" + p;
		body.innerHTML += "<input type="text" name = pid style="visibility: false" value= value />";
		body.innerHTML += "<input type="text" name = tid style="visibility: false" value= t />";
		i++;
	}
	else{
		var a = j.toString();
		var aid = "a" + a;
		body.innerHTML += "<input type="text" name = aid style="visibility: false" value= value />";
		j++;
	}
	z++;
<%
for(i=1 ; i<=5 ; i++){
	String p = Integer.toString(i);
	String p1 = "p" + p;
	String t = "t" + p;
	String present = request.getParameter(p1);
	String time = request.getParameter(t);
	session.putValue(p1,present);
	session.putValue(t,time);
for(j=1 ; j<=5 ; j++){
	String a = Integer.toString(i);
	String a1 = "a" + a;
	String absent = request.getParameter(a1);
	session.putValue(a1,absent);
}}


%>

}
</script>
</html>