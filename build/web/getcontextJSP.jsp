<%-- 
    Document   : getcontextJSP
    Created on : Apr 2, 2021, 12:37:47 AM
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
        <h1>Hello <%=getServletContext().getAttribute("r") %> !</h1> 
       
        <h1> <%= getServletContext().getAttribute("n")%>  <%=  getServletContext().getAttribute("p") %> </h1> 
    </body>
</html>
