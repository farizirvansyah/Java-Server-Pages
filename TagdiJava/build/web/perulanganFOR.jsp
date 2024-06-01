    <%-- 
    Document   : perulanganFOR
    Created on : 21 Mar 2024, 11.24.55
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int n=5;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
            <%
                for(int i=0; i<n; i++){
            %>
            <tr>
                <td>Number</td>
                <td><%= i+1%></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
