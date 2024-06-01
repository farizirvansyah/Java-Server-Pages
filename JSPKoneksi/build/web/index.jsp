<%-- 
    Document   : index
    Created on : 28 Mar 2024, 20.29.27
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>2211500141</title>
    </head>
    <body>
        <form method="post" action="simpan.jsp" style="max-width: 500px; margin: 0 auto;">
            <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
                <tr>
                    <td style="padding: 2px;">NIM:</td>
                    <td style="padding: 10px;"><input type="text" name="txtnim" style="width: 100%; padding: 5px;"></td>
                    <td style="padding: 10px;"><input type="submit" value="cari" name="cmdsimpan"></td>
                    <td></td>
                </tr>
                <tr>
                    <td style="padding: 2px;">Nama:</td>
                    <td style="padding: 10px;"><input type="text" name="txtnama" style="width: 100%; padding: 5px;"></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td style="padding: 2px;">Alamat:</td>
                    <td style="padding: 10px;"><textarea name="txtalamat" rows="4" style="width: 100%; padding: 5px;"></textarea></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center; padding: 10px;">
                        <input type="submit" value="simpan" name="cmdsimpan" style="padding: 5px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 14px; cursor: pointer;">
                        <input type="submit" value="ubah" name="cmdsimpan" style="padding: 5px 20px; background-color: #008CBA; color: white; border: none; border-radius: 14px; cursor: pointer;">
                        &nbsp;<input type="submit" value="hapus" name="cmdsimpan" style="padding: 5px 20px; background-color: #f44336; color: white; border: none; border-radius: 14px; cursor: pointer;">
                        <input type="reset" value="batal" style="padding: 5px 20px; background-color: #ccc; color: black; border: none; border-radius: 14px; cursor: pointer;">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>