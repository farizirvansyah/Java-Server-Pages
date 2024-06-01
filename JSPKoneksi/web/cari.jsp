<%-- 
    Document   : owncari
    Created on : 5 Apr 2024, 15.37.27
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
        <!--
                    if (dapat.equalsIgnoreCase("cari")) {
                try {
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement st = conn.createStatement();
                    String ressql = "SELECT * FROM mahasiswa WHERE nim = '" + nim + "'";
                    ResultSet res = st.executeQuery(ressql);
                    out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                    out.println("<p style='font-size: 18px; color: green; font-weight: bold;'>Hasil Pencarian:</p>");
                    while (res.next()) {
                        out.println("NIM: " + res.getString("nim") + "<br>");
                        out.println("Nama: " + res.getString("nama") + "<br>");
                        out.println("Alamat: " + res.getString("alamat") + "<br>");
                    }
                    out.println("<br><a href='index.jsp' style='text-decoration: none; color: blue;'>Kembali ke Halaman Utama</a>");
                    out.println("</div>");
                    conn.close();
                } catch (Exception e) {
                    out.print(e);
                }
            }
        %>
        /-->
    </body>
</html>
