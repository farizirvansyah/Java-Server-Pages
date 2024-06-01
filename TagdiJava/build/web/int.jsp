<%-- 
    Document   : TagdiJava
    Created on : 21 Mar 2024, 11.14.11
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%! int counter=0; %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        for(counter=0; counter<=10; counter++)
	{
		out.print("nilai counter = "+counter+"<br>");
        }        
        %>
    </body>
</html>
