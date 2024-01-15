<html>
<head>
<script src="/js/script.js"></script>
</head>

<body>
<label for="column" style="margin-left:3%;margin-top:2%;width:10%;height:6%;">Column</label>
<SELECT ID="column" name="column"  style="margin-left:1%; margin-top:2%; width:20%; height:6%; text-align: center">
	<OPTION id ="none" name="none" SELECTED>  </OPTION>
	<OPTION id ="empid" name="empid" value="Employee Id"> Employee Id </OPTION>
	<OPTION id ="empiname" name="empname" value="Employee Name"> Employee Name </OPTION>
</SELECT>

<label for="condition" style="margin-left:3%;margin-top:2%;width:10%;height:6%;">Condition</label>
<SELECT ID="condition" name="condition"  style="margin-left:1%; margin-top:2%; width:20%; height:6%; text-align: center">
	<OPTION id ="none" name="none" SELECTED>  </OPTION>
	<OPTION id ="contains" name="contains" value="contains"> Contains </OPTION>
	<OPTION id ="equals" name="equals" value="equals"> Equals </OPTION>
</SELECT>

<label for="value" style="margin-left:3%;margin-top:2%;width:10%;height:6%;">Value</label>
<input type="text" id="value" name="value" style="margin-left:1%;margin-top:2%;width:15%;height:6%;"/>

<input type="button" id="search" name="search" style="margin-left:2%;margin-top:2%;width:8%;height:6%" value="Search" onclick="onClick()"/>

	<table style="display:none">
		<tr>
			<td>Employee Id</td>
			<td>Employee Name</td>
			<td>Employee Address</td>
			<td>Employee Phone Number</td>
			<td>Employee Age</td>
		</tr>
		<tr>
			<td id="2">1</td>
			<td id="2">George Chalfoun</td>
			<td name="address">Bsarma</td>
			<td name="phone">70199887</td>
			<td name="age">26</td>
		</tr>
		<tr>
			<td id="1">2</td>
			<td id="2">Joseph Khawly</td>
			<td name="address">Kfar Aaqa</td>
			<td name="phone">71009765</td>
			<td name="age">22</td>
		</tr>
	</table>
</body>

<script>

</script>
</html>