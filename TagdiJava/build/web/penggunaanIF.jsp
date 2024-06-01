<%-- 
    Document   : penggunaanIF
    Created on : 21 Mar 2024, 11.35.21
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            boolean hello = true;
            if(hello)
            {
                %>
                <p>Hello World !</p>
                <%
            }
            else
            {
                %>
                    <p>Bye !</p>
                <%
            }
        %>
    </body>
</html>
