<!DOCTYPE html>
<html>
<head>
    <title>submit Page</title>
</head>
<body>
    <form action="exe06submit.jsp" method="post">
 		 
   		 <table border="1">
    <tr>
	    <th>Name</th>
	    <th>Present</th>
	    <th>Time</th>
	</tr>

            <% for (int i = 1; i <= 5; i++) { %>
                <tr>
                    <td>
                        <label for="name<%= i %>">Name:</label>
                        <input type="text" id="name<%= i %>" name="name_name_<%= i %>" required>
                    </td>

                    <td>
                        <label for="present<%= i %>">Present:</label>
                        <input type="radio" id="present_yes<%= i %>" name="present_name_<%= i %>" value="yes" required>YES
                        <input type="radio" id="present_no<%= i %>" name="present_name_<%= i %>" value="no" required>NO
                    </td>

                    <td>
                        <label for="time<%= i %>">Time:</label>
                        <input type="time" id="time<%= i %>" name="time_name_<%= i %>" >
                    </td>
                </tr>
            <% } %>
   
</table>
        

        <input type="submit" value="submit">
    </form>
</body>
</html>