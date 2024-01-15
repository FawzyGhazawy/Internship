<%@ page import="java.net.URL, java.net.URI, java.awt.Desktop, java.io.IOException" %>
<%@ page import="java.util.concurrent.atomic.AtomicInteger" %>

<%! 
    String siteName = "https://chat.openai.com";
    AtomicInteger counter = new AtomicInteger(0);

    private void incrementCounter() {
        counter.incrementAndGet();
    }

    private void openSiteInNewTab() {
        try {
            URI uri = new URL(siteName).toURI();
            Desktop.getDesktop().browse(uri);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>

<html>
<head>
    <title>Second example</title>
</head>
<body> 
    <p>Website of the day is:</p> 
    <strong><%= siteName %></strong>
    <br>
    Page accessed: <%= counter.get() %>
    
    <form action="<%= request.getContextPath() %>/IncrementAndOpenSite" method="post" target="_blank">
        <input type="submit" value="Open Site in New Tab" onclick="incrementCounter()">
    </form>
    
    <script>
        function incrementCounter() {
            <% incrementCounter(); %>
        }
    </script>
</body>
</html>
