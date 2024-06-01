<%-- 
    Document   : index
    Created on : 8 Apr 2024, 20.40.27
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
        <form action="Register" method="GET">
            <table border="1">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="nama"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea rows="3" name="alamat"></textarea></td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="text" name="mobile"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
