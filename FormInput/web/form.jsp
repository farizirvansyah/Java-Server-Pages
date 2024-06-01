<%-- 
    Document   : form.jsp
    Created on : 23 Mar 2024, 04.40.30
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mencetak Angka Genap</title>
    </head>
    <body>
        <table border="1" width="200" align="center">
            <form name="tampilan" action="genap/action.jsp" method="post" onsubmit="return ValidasiKosong()">
                <h2 align="center">Cetak Angka Genap</h2>
                <tr>
                    <td>Min.</td>
                    <td><input type="text" name="min" onkeypress="return angkaSaja(event)"></td>
                </tr>
                <tr>
                    <td>Max.</td>
                    <td><input type="text" name="max" onkeypress="return angkaSaja(event)"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Cetak"></td>
                </tr>
            </form>
        </table>
        
        <script type="text/javascript">
        function validasiKosong()
        {
            var x= document.forms("tampilan")("min").value;
            if(x===null || x==="")
            {
                alert("Nilai Minimal harus diisi");
                return false;
            }
            var x= document.forms("tampilan")("max").value;
            if(x===null || x==="")
            {
                alert("Nilai Maksimal harus diisi");
                return false;
            }
        }
        
        function angkaSaja(event) 
        {
            var charCode = (event.which) ? event.which: event.keyCode;
            if(charCode>31 && (charCode<48 || charCode>57))
                return false;
                return true;
        }
        </script>
    </body>
</html>