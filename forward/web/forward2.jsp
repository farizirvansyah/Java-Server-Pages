<%-- 
    Document   : forward2
    Created on : 23 Mar 2024, 03.03.48
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            .big{
                font-family: Tahoma, sans-serif, arial;
                font-weight: bold;
                font-size: 2em;
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hasil Forward</h1>
        <p class="big">
            <h2>Selamat Datang <%=request.getParameter("firstName")%></h2>
            <h2>Request sudah diterima dan di forward dengan melampirkan</h2>
        </p>
        
        <table>
            <tr>
                <td style="background-color: green">
            <p class="big">
                <%= request.getParameter("date")%>
            </p>
            </td>
            </tr>
        </table>
    </body>
</html>
