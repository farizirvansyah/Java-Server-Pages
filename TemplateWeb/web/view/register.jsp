<%-- 
    Document   : register
    Created on : 8 Apr 2024, 22.45.44
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
        <div id="dosen" align="center">
            <h1>Master Dosen</h1><br>
            <form action="" method="post">
                <table border="1">
                    <tr>
                        <td>NIP</td>
                        <td>:</td>
                        <td>
                            <input type="text" name="txtnip">
                            <input type="submit" value="cari">
                        </td>
                    </tr>
                    <tr>
                        <td>Nama</td>
                        <td>:</td>
                        <td><input type="text" name="txtnama"></td>
                    </tr>
                    <tr>
                        <td>Pendidikan</td>
                        <td>:</td>
                        <td>
                            <select name="pdd">
                                <option value="S1">S1</option>
                                <option value="S2">S2</option>
                                <option value="S3">S3</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Alamat</td>
                        <td>:</td>
                        <td>
                            <textarea rows="6" cols="10"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="simpan">
                            <input type="submit" value="ubah">
                            <input type="submit" value="hapus">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
