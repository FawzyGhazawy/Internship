<html>
<head>

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
<body style="margin:0">
<%int row=2;%>
<div class="frame1" style="height: 40%; width:100% ; border-style: solid; margin:0">
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
</div>
<div style="height:60%;  width:100%; ">
<div class="frame1" style=" height:100% ; width:63.3% ; border-style: solid; margin:0; display:inline-block; text-align:center " >
<table>
<tr>
<td>
Employee Id
</td>
<td>
Employee Name
</td>
<td>
Employee Address
</td>
<td>
Employee Phone Number
</td>
<td>
Employee Age
</td>
</tr>
<tr>
<td name="1">
1
</td>
<td name="2">
George Chalfoun
</td>
<td name="3">
Bsarma
</td>
<td name="4">
70199887
</td>
<td name="5">
26
</td>
</tr>
<tr>
<td name="1">
2
</td>
<td name="2">
Joseph Khawly
</td>
<td name="3">
Kfar Aaqa
</td>
<td name="4">
71009765
</td>
<td name="5">
22
</td>
</tr>
</table>
<input type="button" id="add" name="add" style="margin-top:1%;width:8%;height:6%" value="Add" onclick="onAdd()"/>
<input type="button" id="Modify" name="Modify" style="margin-top:1%; margin-left:2% ; width:8%;height:6%" value="Modify" onclick="onClick()"/>
</div>
<div class="frame1" style=" height:100% ; width:35.3% ; border-style: solid; margin:0;  margin-top=0; display:none" id="divform">
<form style="height:70% ; width:90%; margin-top:8%; margin-left:5%">
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
</div>
</div>
</body>
<script>
function onClick() {
  var column = document.getElementById("column").value;
  var condition = document.getElementById("condition").value;
  var value = document.getElementById("value").value;

  if (condition == "contains") {
    var choicetd;
    var i;

    switch (column) {
      case "Employee Id":
        choicetd = document.getElementsByName("1");
        break;
      case "Employee Name":
        choicetd = document.getElementsByName("2");
        break;
      case "Employee Address":
        choicetd = document.getElementsByName("3");
        break;
      case "Employee Phone Number":
        choicetd = document.getElementsByName("4");
        break;
      case "Employee Age":
        choicetd = document.getElementsByName("5");
        break;
    }

    for (i = 0; i < choicetd.length; i++) {
      if (choicetd[i].innerHTML.includes(value)) {
        const parentElement = choicetd[i].parentNode;
        parentElement.style.backgroundColor = "#ADD8E6";
      }
	  else{
		 const parentElement2 = choicetd[i].parentNode;
         parentElement2.style.backgroundColor = "white"; 
	  }
    }
  }
  else if (condition == "Start With") {
    var choicetd2;
    var j;

    switch (column) {
      case "Employee Id":
        choicetd2 = document.getElementsByName("1");
        break;
      case "Employee Name":
        choicetd2 = document.getElementsByName("2");
        break;
      case "Employee Address":
        choicetd2 = document.getElementsByName("3");
        break;
      case "Employee Phone Number":
        choicetd2 = document.getElementsByName("4");
        break;
      case "Employee Age":
        choicetd2 = document.getElementsByName("5");
        break;
    }

    for (j = 0; j < choicetd2.length; j++) {
      if (choicetd2[j].innerHTML.toLowerCase().startsWith(value)) {
        const parentElemen3 = choicetd2[j].parentNode;
        parentElemen3.style.backgroundColor = "#ADD8E6";
      }
	  else{
		 const parentElement4 = choicetd2[j].parentNode;
         parentElement4.style.backgroundColor = "white"; 
	  }
    }
  }
}
function onAdd(){
	var add= document.getElementById("divform");
	add.style.display="inline-block";
}
function onSave(<%=row%>){
	<%
	session.setAttribute("row",row);
	int i = Integer.parseInt(session.getAttribute("row"));
	 row = i + 1;
	String j0= (Integer).toString(j)
	String j = (Integer).toString(i);
	String ji = j+"0";
	String j1 = j+j;
	String j2 = j+j+j;
	String j3 = j+j+j+j;
	String ename = request.getParameter("ename");
	String address = request.getParameter("address");
	String ephone = request.getParameter("ephone");
	String eage = request.getParameter("eage");
	session,setAttribute(j, ename);
	session,setAttribute(j1, eaddress);
	session,setAttribute(j2, ephone);
	session,setAttribute(j3, eage);
	session.setAttribute("row",row);
	%>
	var sub= document.getElementById("divform");
	sub.style.display="none";
}
function handleItemClick(var item){
	var inner= item.innerHTML;
	form.innerHTML += "<input type="text" name = "item" value=inner style="display:none"/>";
}
var listItems = document.getElementById("1");
  listItems.forEach(function(item) {
    item.addEventListener("click", handleItemClick(item));
  });
function onModify(){
	<%
	row= Integer.parseInt(request.getParameter("item"));
	%>
	onSave(<%=row%>);
}
<% 
   int k=2;
   String k=Integer.toString(k);
   sYSTEM.OUT.PRINTLN(session.getAttribute(k));
   while(session.getAttribute(k)!== null){
	  %>
   table.innerHTML+="<tr><td name="1"><%=K%></td><td><%=session.getAttribute((k)%></td><td><%=session.getAttribute((k + k)%></td><td><%=session.getAttribute((k + k + k)%></td><td><%=session.getAttribute((k + k + k + k)%></td></tr>";
   <%
   k++;
   }
%>
</script>
</html>