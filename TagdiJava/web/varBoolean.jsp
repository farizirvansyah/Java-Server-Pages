<%-- 
    Document   : varBoolean
    Created on : 21 Mar 2024, 11.40.59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    boolean checkCondition=false;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(checkCondition==true)
            {
                out.print("This Condition is true");
            }
            else
            {
                out.print("This Condition is false");
            }
        %>
    </body>
</html>
