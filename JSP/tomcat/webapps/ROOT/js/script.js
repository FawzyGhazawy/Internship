function onClick() 
{
	var column    = document.getElementById("column").value;
	var condition = document.getElementById("condition").value;
	var value     = document.getElementById("value").value;
	
}

function onAdd()
{
    var form      = document.getElementById("divform");
	form.style.display = "inline-block";
	
}

function onSave()
{
	var name = document.getElementById("ename").value;
	var address = document.getElementById("eaddress").value;
	var phone = document.getElementById("ephone").value;
	var age = document.getElementById("eage").value;
	alert(name);
}
