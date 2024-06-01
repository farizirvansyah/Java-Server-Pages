<%-- 
    Document   : index
    Created on : 8 Apr 2024, 22.44.53
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            #left{
                float: left;
                width: 20%;
                border-style: groove;
                background-color: #b8e186;
            }
            
            #right{
                margin-left: 300px;
                width: 40%;
                border-style: groove;
            }
            
            #header{
                width: 66%;
                height: 150px;
                border-style: groove;
                font-family: Tahoma;
                font-size: 32px;
                font-weight: bold;
                background-color: #7fbc41;
            }
        </style>
    </head>
    <body>
        <div id="konten">
            <div id="header">
                <h1>Web Perubahan</h1>
            </div>
            <div id="left">
                <h3><a href="index.jsp?id=login">Menu Login</a></h3>
                <h3><a href="index.jsp?id=form">Menu Dosen</a></h3>
            </div>
            <div id="right">
                <%
                    if(request.getParameter("id")==null)
                    {
                        out.print("data kosong");
                    }
                    else
                    {
                        String kode=request.getParameter("id");
                        if(kode.equals("form"))
                        {
                            %>
                            <jsp:include page="view/register.jsp" flush="true"/>
                            <%
                        }
                        else if(kode.equals("login"))
                        {
                        %>
                            <jsp:include page="view/login.jsp" flush="true"/>
                        <%
                        }
                    }
                %>
            </div>
        </div>
    </body>
</html>
