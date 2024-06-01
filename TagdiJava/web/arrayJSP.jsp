<%-- 
    Document   : arrayJSP
    Created on : 21 Mar 2024, 11.29.46
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String[] stArray = {"Ricky", "Revan", "Revin"};
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            for(int i=0; i<stArray.length; i++)
            {
                out.print("stArray Elements: "+stArray[i]+"<br>");
            }
        %>
    </body>
</html>
