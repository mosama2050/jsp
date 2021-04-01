<%-- 
    Document   : home
    Created on : Apr 1, 2021, 10:46:37 PM
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
        <h1>Hello World!</h1>  <br>
        <%-- 
          <%! int i = 10 ; %>    <!declaration >
          <% i++; %>              <!jsp:scriptlet >
          <%= i %>                 <!expression  >
        
        <%@page import="" %>   
        
        <jsp:declaration></jsp:declaration>
        <jsp:scriptlet></jsp:scriptlet>
        <jsp:expression></jsp:expression>
        
        <jsp:forward page="newhtml.html" />
 
        --%>

        <%
            String radio = request.getParameter("s");
            System.out.println(radio);
            String name = request.getParameter("name");
            String pass = request.getParameter("pass");
            if (name.equals("") || pass.equals("")) {
                //hyrg3 le html
                response.sendRedirect("index.html");
            }
        %>

        name :   <%= name%> <br>
        pass :   <%= pass%> <br>
        radio:   <%= radio%> <br>
        <%
            if (radio.equals("request")) {
                //hyrg3 le html
                request.setAttribute("n", name); 
                request.setAttribute("p", pass); 
                request.setAttribute("r", radio);
//                response.sendRedirect("getrequestJSP.jsp");
            RequestDispatcher dispatcher = request.getRequestDispatcher("getrequestJSP.jsp");
            dispatcher.forward(request, response);
            } else if (radio.equals("context")) {
                 getServletContext().setAttribute("n", name);
                 getServletContext().setAttribute("p", pass);
                 getServletContext().setAttribute("r", radio);
                 response.sendRedirect("getcontextJSP.jsp");
            } else {
                  HttpSession hs = request.getSession();
                  hs.setAttribute("n", name);
                  hs.setAttribute("p",pass);
                  hs.setAttribute( "r", radio);
                  response.sendRedirect("getsessionJSP.jsp");
            }


        %>
       

    </body>
</html>
