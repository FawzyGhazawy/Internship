<!-- session.jsp - checks to see if you have visited a page and keeps a counter -->
<html>
<head>
</head>
<body>
<%
// Get the value of the session variable "visitcounter"
Integer totalvisits = (Integer)session.getAttribute("visitcounter");

// If the session variable "visitcounter" is null, set it to 0
if (totalvisits == null) {
    totalvisits = new Integer(0);
    session.setAttribute("visitcounter", totalvisits);
    out.println("Welcome, visitor");
} else {
    // If you have visited the page before, increment the visitcounter
    totalvisits = new Integer(totalvisits.intValue() + 1);
    session.setAttribute("visitcounter", totalvisits);
    out.println("You have visited this page " + totalvisits + " time(s)!");
}
%>
</body>
</html>
