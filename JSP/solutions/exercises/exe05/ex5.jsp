
<%@ page import="java.lang.*"%>
<%
    String getColor(){
        String [] colors = {"green" , "red" ,"blue","yellow"};
        int i = (int)(Math.random()*colors.length);
        String color = colors[i];
        return color;
    }
%>

<html>
<head>
    <title> Exercise No. 5</title>
    <style>
        body {
            background-color: <%= getColor() %>;
        }
    </style>
</head>
<body>
<p>Background color is ready</p>
</body>
</html>