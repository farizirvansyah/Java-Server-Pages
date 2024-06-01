<%-- 
    Document   : action
    Created on : 23 Mar 2024, 05.00.44
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kode Program Bilangan Genap</title>
    </head>
    <body>
        <%
            String min, max;
            min= request.getParameter("min");
            max= request.getParameter("max");
            
            int minimal= Integer.parseInt(min);
            int maksimal= Integer.parseInt(max);
            if(minimal<maksimal)
            {
                out.println("Angka Genap: ");
                for(int i=minimal; i<=maksimal; i++)
                {
                    if(i%2==0)
                    {
                        out.println(+i);
                    }
                }
            }
            else
            {
                out.println("Nilai maksimal harus lebih besar dari nilai minimal");
            }
        %>
    </body>
</html>