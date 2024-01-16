<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
    // Retrieve form parameters
    String[] names = {"Carene", "Nadine", "Rana", "Claude", "Michael"};
    String[] presentNames = new String[names.length];
    String[] absentNames = new String[names.length];
    String[] lateNames = new String[names.length];

    // Get the current date and time
    Date currentDate = new Date();
    SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm");
    String currentTime = timeFormat.format(currentDate);

    // Process form data
    for (int i = 0; i < names.length; i++) {
        String name = names[i];
        String presentParam = "present_" + name;
        String timeParam = "time_" + name;

        // Check if checkbox is selected
        if ("on".equals(request.getParameter(presentParam))) {
            presentNames[i] = name;

            // Check if employee is late
            if (currentTime.compareTo(request.getParameter(timeParam)) < 0) {
                lateNames[i] = name;
            }
        } else {
            absentNames[i] = name;
        }
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance Summary</title>
</head>

<body>
    <div class="container">
        <h1>Attendance Summary</h1>
        <table border="border">
            <tr>
                <th>Present Employees</th>
            </tr>
            <%
                for (String name : presentNames) {
            %>
            <tr>
                <td><%= name %></td>
            </tr>
            <%
                }
            %>
        </table>

        <br>

        <table border="border">
            <tr>
                <th>Absent Employees</th>
            </tr>
            <%
                for (String name : absentNames) {
            %>
            <tr>
                <td><%= name %></td>
            </tr>
            <%
                }
            %>
        </table>

        <br>

        <table border="border">
            <tr>
                <th>Late Employees</th>
            </tr>
            <%
                for (String name : lateNames) {
            %>
            <tr>
                <td><%= name %></td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
</body>

</html>
