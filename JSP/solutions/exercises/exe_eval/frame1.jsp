<html>
<head>
<title>Frame 1</title>
<script src="/script.js"></script>
</head>

<body>
<label for="column" style="margin-left:3%;margin-top:2%;width:10%;height:6%;">Column</label>
<SELECT ID="column" name="column"  style="margin-left:1%; margin-top:2%; width:20%; height:6%; text-align: center">
	<OPTION id ="none" name="none" SELECTED>  </OPTION>
	<OPTION id ="empid" name="empid" value="Employee Id"> Employee Id </OPTION>
	<OPTION id ="empiname" name="empname" value="Employee Name"> Employee Name </OPTION>
	<OPTION id ="empadd" name="empadd" value="Employee Address"> Employee Address </OPTION>
	<OPTION id ="empnum" name="empnum" value="Employee Phone Number"> Employee Phone Number </OPTION>
	<OPTION id ="empage" name="empage" value="Employee Age"> Employee Age </OPTION>
</SELECT>

<label for="condition" style="margin-left:3%;margin-top:2%;width:10%;height:6%;">Condition</label>
<SELECT ID="condition" name="condition"  style="margin-left:1%; margin-top:2%; width:20%; height:6%; text-align: center">
	<OPTION id ="none" name="none" SELECTED>  </OPTION>
	<OPTION id ="contains" name="contains" value="contains"> Contains </OPTION>
	<OPTION id ="start" name="start" value="Start With"> Start With: </OPTION>
</SELECT>

<label for="value" style="margin-left:3%;margin-top:2%;width:10%;height:6%;">Value</label>
<input type="text" id="value" name="value" style="margin-left:1%;margin-top:2%;width:15%;height:6%;"/>
<input type="button" id="search" name="search" style="margin-left:2%;margin-top:2%;width:8%;height:6%" value="Search" onclick="onClick()"/>

</body>

<script>

</script>
</html>