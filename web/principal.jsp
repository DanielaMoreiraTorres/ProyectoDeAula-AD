<%-- 
    Document   : principal
    Created on : 28-dic-2020, 13:43:54
    Author     : DANIELA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String us = request.getParameter("user"); %>
        
        <div id="bienvenida">
            <h4>Bienvenido/a <%=us%></h4>
        </div>
        
    </body>
</html>
