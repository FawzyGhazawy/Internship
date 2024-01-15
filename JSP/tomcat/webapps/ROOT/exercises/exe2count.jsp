<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Page Visit Counter</title>
</head>
<body>
<%
String user = request.getParameter("user_name");
String[] names = {"tony", "roy", "joe"};
Integer userVisitCount = 0;
Integer totalVisits ;


for (String element : names) {

    if (element != null && element.equals(user)) {
        

        HttpSession userSession = request.getSession();
        
        
        Integer totalvisits = (Integer)session.getAttribute("visitcounter");

   
     if (totalvisits == null) {
         totalvisits = new Integer(0);
         session.setAttribute("visitcounter", totalvisits);
         %>  
         <h1>Visit Counter 1</h1>
        <p>Total Visit Count for this page: <%= totalvisits %></p>
 		
          <%
        
     } else {
        
         totalvisits = new Integer(totalvisits.intValue() + 1);
         session.setAttribute("visitcounter", totalvisits);
         %>  
         <h1>Visit Counter 2</h1>
         <p>Total Visit Count for this page: <%= totalvisits %></p>
 		
          <%
        
         
     }
        

        if (userSession.getAttribute(user) == null) {
           
            userSession.setAttribute(user, 0);
            
        } else {
           
            userVisitCount = (Integer) userSession.getAttribute(user);
            userVisitCount++;
            userSession.setAttribute(user, userVisitCount);
        }

       
        userVisitCount = (Integer) userSession.getAttribute(user);

       
        if (userVisitCount == null) {
            userVisitCount = 0;
        }

       
        

        
        userSession.setAttribute(user, userVisitCount);

       
        

       
        if (totalvisits.intValue() == 0) {
        	
        	totalvisits = new Integer(0);
        	session.setAttribute("visitcounter", totalvisits+1);
           
             %>  
             
             <p>User-specific Visit Count for User <%= user %>: <%= 0 %></p><br><br>
			
              <% 
        }else{
        	

        	// If the session variable "visitcounter" is null, set it to 0
        	
        	
        %>  
        
        <p>User-specific Visit Count for User <%= user %>: <%= userVisitCount +1%></p><br><br>
		
         <% 
        }}
       // totalVisits +=userVisitCount;
    else{

    	 //response.sendRedirect("exe2.jsp");
    	   // return;
}
}

//for (!(String element : names)) {
//    String targetPage = "exe2.jsp";
//    request.getRequestDispatcher(targetPage).forward(request, response);
//}
%>

</body>
</html>
