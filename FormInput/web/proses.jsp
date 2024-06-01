<%-- 
    Document   : proses
    Created on : 23 Mar 2024, 04.34.21
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
            if(request.getParameter("btnSimpan")!=null)
            {
                String nama= request.getParameter("Nama");
                out.println("Nama Anda adalah "+nama);
            }
        %>
    </body>
</html>
