<!DOCTYPE html>
<html lang="en">
<head>
<%@ page import="java.util.Random" %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 1</title>
</head>
<body>
    <div class="container">
        <%
            Random random = new Random();
            int numberOfEntries = random.nextInt(10) + 1; 

            for (int i = 0; i < numberOfEntries; i++) {
        %>
                <li><%= random.nextInt(100) + 1 %></li>
        <%
            }
        %>
    </div>

    <ul id="list"></ul>

    <script>
        
        window.onload = appendRandomNumbers;

        function appendRandomNumbers() {
          
            var ul = document.getElementById("list");

            <%-- Loop to append random numbers --%>
            <% for (int i = 0; i < numberOfEntries; i++) { %>
                
                var li = document.createElement("li");

                
                li.innerHTML = "<%= random.nextInt(100) + 1 %>";

                
                ul.appendChild(li);
            <% } %>
        }
    </script>
</body>
</html>
