<%-- 
    Document   : forward1
    Created on : 23 Mar 2024, 03.03.39
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
            String name= request.getParameter("firstName");
            if(name!=null)
            {
        %>
        <jsp:forward page="forward2.jsp">
            <jsp:param name="date" value="<%= new java.util.Date()%>"/>
        </jsp:forward>
        <%
            }
            else
            {
        %>
        <h1>Contoh Forward</h1>
        <form action="forward1.jsp">
            Input Nama Awal: <input type="text" name="firstName"/><br>
            <input type="submit" value="Simpan">
        </form>
        <%
            }
        %>
    </body>
</html>
