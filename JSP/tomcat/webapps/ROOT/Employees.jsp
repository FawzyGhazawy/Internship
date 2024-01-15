
<html>

<head>
<script src="/js/script.js"></script>
<script>

function onAdd()
{
	alert("---------onAdd---------");
    var form      = document.getElementById("divform");
	form.style.display = "inline-block";
}

</script>
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


	<table id="table">
		<tr>
		    <td>Select</td>
			<td>Employee Id</td>
			<td>Employee Name</td>
			<td>Employee Address</td>
			<td>Employee Phone Number</td>
			<td>Employee Age</td>
		</tr>
		<tr>
		    <td><input type="radio" class="radio" name="0" onChange="onChange()"/></td>
			<td id="1" >1</td>
			<td id="2">George Chalfoun</td>
			<td name="address">Bsarma</td>
			<td name="phone">70199887</td>
			<td name="age">26</td>
		</tr>
		<tr>
            <td><input type="radio" class="radio" name="0" onChange="onChange()"/></td>
			<td id = "1"> 2 </td>
			<td id="2">Joseph Khawly</td>
			<td name="address">Kfar Aaqa</td>
			<td name="phone">71009765</td>
			<td name="age">22</td>
		</tr>
	</table>
	
	<input type="button" id="add" name="add" style="margin-top:1%;width:8%;height:6%" value="Add" onclick="onAdd()"/>
	<input type="button" id="Modify" name="Modify" style="margin-top:1%; margin-left:2% ; width:8%;height:6%" value="Modify" onclick="onModify()"/>


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
<script>
var id = 3;
function onSave()
{   
    alert("----------onsave---------");
	
	var name = document.getElementById("ename").value;
	var address = document.getElementById("eaddress").value;
	var phone = document.getElementById("ephone").value;
	var age = document.getElementById("eage").value;
	var table  = document.getElementById("table");
	
	table.innerHTML += "<TR><td><input type='radio' class='radio' name='0'/></td><TD>"+id+"</TD><TD>"+ name +"</TD><TD>" + address + "</TD><TD>" + phone + "</TD><TD>" + age + "</TD></TR>";
	id = id + 1;
	var form      = document.getElementById("divform");
	form.style.display = "none";
}
function onChange(){
var radioButtons = document.querySelectorAll('.radio');

        for (var i = 0; i < radioButtons.length; i++) {
            
                if (radioButtons[i].checked == true) {
                    var parent = radioButtons[i].parentNode;
                    parent.style.backgroundColor = "red";
					
                   }
		}
}
function onModify(){
var form      = document.getElementById("divform");
	form.style.display = "inline-block";
var radioButtons = document.querySelectorAll('.radio');
        for (var i = 0; i < radioButtons.length; i++) {
            
                if (radioButtons[i].checked == true) {
                    var parent = radioButtons[i].parentNode;
                    var parent2 = parent.parentNode;
					const child = parent2.children;
					var name = child[2].innerHTML;
					var address = child[3].innerHTML;
					var phone = child[4].innerHTML;
					var age = child[4].innerHTML;
					}
					
					var fname = document.getElementById("ename");
	                var faddress = document.getElementById("eaddress");
	                var fphone = document.getElementById("ephone");
	                var fage = document.getElementById("eage");
					fname.value = name;
					faddress.value = address;
					fphone.value = phone;
					fage.value = age;
					parent2.style.display="none";
	          }	
}       


</script>
</html>