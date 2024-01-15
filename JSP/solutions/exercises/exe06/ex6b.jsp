<html>
<%@ page import="java.time.LocalTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.format.DateTimeParseException"%>
<head>
</head>
<body>
<div id ="present">
</div>
<div id = "absent">
</div>
</body>
<script>
var present = document.getElementById("present);
var absent = document.getElementById("present);
<%
int i;
String j;
String t;
String p1;
String a1;
String present;
String absent;
String timeGot;
 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
for (i=1; i<=5; i++)(
   j = Integer.toString(i);
   p1 = "p"+j;
   t = "t" + j
   present = session.getValue(p1);
   timeGot = session.getValue(t);
   try {
            LocalTime time = LocalTime.parse(timeGot, formatter);
            
        }
	
   %>
   present.innerHTML +="<span><%=present%></span>" ;
   <%
   if (time >= 8:00){%>
   present.innerHTML +="<span>Late Student</span>" ;
   present.innerHTML +="<br>";
   <%}
   }
for (i=1; i<=5; i++)(
   j = Integer.toString(i);
   a1 = "a"+j;
   absent = session.getValue(a1);
   %>
   absent.innerHTML +="<p><%=absent%></p>" ;
   <%}
   

%>
</script>
</html>