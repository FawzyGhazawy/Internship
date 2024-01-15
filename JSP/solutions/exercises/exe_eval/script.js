console.log("Javascript is loaded");
function onClick() {
  var column = document.getElementById("column").value;
  var condition = document.getElementById("condition").value;
  var value = document.getElementById("value").value;
  alert(column);
alert(condition);
alert(value);
 /* if (condition == "contains") {
	  alert(condition);
	  
    //var choicetd;
    var i;
    switch (column) {
		
      case "Employee Id"
        //choicetd = document.getElementsByName("1");
		//alert(choicetd[i]);
        break;
      case  "Employee Name":
        //choicetd = document.getElementsByName("2");
        break;
      /*case  "Employee Address":
        choicetd = document.getElementsByName("3");
        break;
      case  "Employee Phone Number":
        choicetd = document.getElementsByName("4");
        break;
      case  "Employee Age":
        choicetd = document.getElementsByName("5");
        break;*/
   /* }*/

 /*   for (i = 0; i < choicetd.length; i++) {
      if (choicetd[i].innerHTML.includes(value)) {
		  alert(choicetd[i]);
        const parentElement = choicetd[i].parentNode;
        parentElement.style.backgroundColor = "#ADD8E6";
      }
	  else{
		 const parentElement2 = choicetd[i].parentNode;
         parentElement2.style.backgroundColor = "white"; 
	  }
    }*/
 /* }
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
        choicetd2 =document.getElementsByName("5");
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
	
  }*/
}