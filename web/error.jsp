<%-- 
    Document   : error
    Created on : 15/11/2021, 06:43:23 PM
    Author     : diant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Ocurrio error</h1>
        
        <h2>
            <%
               String error= (String)request.getSession().getAttribute("error");
               out.println(error);
                
             %>   
            
        </h2>
    </body>
</html>
