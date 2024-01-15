<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Summary Page</title>
</head>
<body>
   
    <table border="1">
        <tr>
            <th>Name</th>
   		   	<th>presence</th>
            <th>Status</th>
        </tr>
        <%
            for (int i = 1; i <= 5; i++) {
                String name = request.getParameter("name_name_" + i);
                String present = request.getParameter("present_name_" + i);
                String inputtime = request.getParameter("time_name_" + i);
                String presence = "";
                String status = "";

                if ("yes".equals(present)) {
                	presence="present";
                	   if (inputtime  != null && !inputtime .isEmpty()) {
                           try {
                               // Parse the time string in 24-hour format
                               java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("HH:mm");
                               java.util.Date time = sdf.parse(inputtime );

                               
                               java.util.Date threshold = sdf.parse("08:00");

                               if (time.after(threshold)) {
                                   status = "Late";
                               } else {
                                   status = "on time";
                               }
                           } catch (Exception e) {
                               status = "Invalid Time"; 
                           }
                       }
                    }
                    
                    
                    else{
                    	presence = "Absent";
                    	status = "";
                    }
                out.println("<tr>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + presence + "</td>");
                out.println("<td>" + status + "</td>");
                out.println("</tr>");
                }

               
           
        %>
    </table>
</body>
</html>
