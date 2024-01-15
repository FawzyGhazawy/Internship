
<html>
<head>
<title>JSP Exemple 2</title>
</head>
<body> JSP Exemple 2
<br>
<%!
String sitename = "visualbuilder.com";
int counter = 30;
private void incrementCounter() {
counter++;
}
%>
Website of the day is <%= sitename %>.
<BR>
page accessed
<%= counter %>.
<BR>
<% if (counter == 0) { %>
Welcome, visitor!
<% } else { %>
You have visited this page <%= counter %> time(s)!
<% } %>

</body>
</html>
