<%-- 
    Document   : getsessionJSP
    Created on : Apr 2, 2021, 12:40:59 AM
    Author     : moham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% HttpSession hs = request.getSession();%>
         <h1>Hello <%=hs.getAttribute("r") %> !</h1> 
       
        <h1> <%= hs.getAttribute("n")%>  <%=  hs.getAttribute("p") %> </h1> 
    </body>
</html>
