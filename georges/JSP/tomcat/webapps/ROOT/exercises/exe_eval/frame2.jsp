<html>
<head>
<title>Frame 1</title>
</head>
<style>
td{
	border-style: solid;
	text-align: center;
}
table{
	width:90%;
	margin:0 5%;
}
</style>

<body>
<script src="exercises\exe_eval\script.js"></script>
<table>
<tr>
<td>Employee Id</td>
<td>Employee Name</td>
<td>Employee Address</td>
<td>Employee Phone Number</td>
<td>Employee Age</td>
</tr>
<tr>
<td name="1">1</td>
<td name="2">George Chalfoun</td>
<td name="3">Bsarma</td>
<td name="4">70199887</td>
<td name="5">26</td>
</tr>
<tr>
<td name="1">2</td>
<td name="2">Joseph Khawly</td>
<td name="3">Kfar Aaqa</td>
<td name="4">71009765</td>
<td name="5">22</td>
</tr>
</table>
<input type="button" id="add" name="add" style="margin-top:1%;width:8%;height:6%" value="Add" onclick="onAdd()"/>
<input type="button" id="Modify" name="Modify" style="margin-top:1%; margin-left:2% ; width:8%;height:6%" value="Modify" onclick="onAdd()"/>

</body>

<script>
function onAdd(){
   var employeeName = document.getElementById("employeeName").value;
}
</script>
</html>