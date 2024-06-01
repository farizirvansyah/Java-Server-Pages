<%-- 
    Document   : arrayLIST
    Created on : 23 Mar 2024, 04.21.14
    Author     : Administrator
--%>

<%@page import="java.util.ArrayList" language="java"%>
<%
    ArrayList ar= new ArrayList();
    ar.add("bob");
    ar.add("riche");
    ar.add("jacky");
    ar.add("rosy");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int i=0;
            for(i=0; i<ar.size(); i++)
            {
                out.print("ArrayList Elements :"+ar.get(i)+"<br>");
            }
        %>
    </body>
</html>