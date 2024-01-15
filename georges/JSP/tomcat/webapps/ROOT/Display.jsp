<html>
<head>
<script src="/js/script.js"></script>
</head>
<body>
<form style="height:70% ; width:90%; margin-top:8%; margin-left:5%; display:none" id="divform">
<label for="ename" style="margin-button:5%">Employee Name: </label>
<input type="text" name="ename" id="ename"style="margin-button:5% ; width:40%;height:8%" />
<br>
<label for="eaddress" style="margin-button:5%">Employee Address: </label>
<input type="text" name="eaddress" id="eaddress" style="margin-button:5%; width:40%;height:8%" />
<br>
<label for="ephone" style="margin-button:5%">Employee Phone Number: </label>
<input type="text" name="ephone" id="ephone" style="margin-button:5%; width:40%;height:8%" />
<br>
<label for="eage"style="margin-button:5%" >Employee Age: </label>
<input type="text" name="eage" id="eage" style="margin-button:5%; width:40%;height:8%" />
<br>
<input type="button" name="save" id="save" style="margin-button:5%; width:40%;height:8%" value="save" onclick="onSave()"/>
</form>

</body>
</html>