<%-- 
    Document   : edit
    Created on : 11 Apr 2024, 09.26.41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
            String nim=request.getParameter("txtnim");
            String nama=request.getParameter("txtnama");
            String alamat=request.getParameter("txtalamat");
            String dapat=request.getParameter("cmdsimpan");
            // Menyimpan isi Database
            if (dapat != null && dapat.equalsIgnoreCase("simpan")) {
                try {
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement st = conn.createStatement();
                    String sql = "INSERT INTO mahasiswa(nim, nama, alamat) VALUES ('" + nim + "', '" + nama + "', '" + alamat + "')";
                    int rowsAffected = st.executeUpdate(sql);
                    if (rowsAffected > 0) {
                        String ressql = "SELECT * FROM mahasiswa WHERE nim = '" + nim + "'";
                        ResultSet res = st.executeQuery(ressql);
                        out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                        out.println("<p style='text-align: center; font-size: 18px; color: green; font-weight: bold;'>Data berhasil disimpan!</p>");
                        while (res.next()) {
                            %><p style='text-align:center;'><%
                            out.println("NIM: " + res.getString("nim") + "<br>");
                            out.println("Nama: " + res.getString("nama") + "<br>");
                            out.println("Alamat: " + res.getString("alamat") + "<br>");
                            %></p><%
                        }
                        out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                        out.println("</div>");
                    } else {
                        out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                        out.println("<p style='text-align: center; font-size: 18px; color: red; font-weight: bold;'>Gagal menyimpan data!</p>");
                        out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                        out.println("</div>");
                    }
                    conn.close();
                } catch (Exception e) {
                    out.print(e);
                }
            }
            // Mencari isi Database
            if (dapat != null && dapat.equalsIgnoreCase("cari")) {
                try {
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement st = conn.createStatement();
                    String ressql = "SELECT * FROM mahasiswa WHERE nim = '" + nim + "'";
                    ResultSet res = st.executeQuery(ressql);
                    out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                    out.println("<p style='text-align: center; font-size: 18px; color: green; font-weight: bold;'>Hasil Pencarian:</p>");
                    boolean found = false;
                    while (res.next()) {
                    %>
                        <form method="post" action="simpan.jsp" style="max-width: 500px; margin: 0 auto;">
                            <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
                                <tr>
                                    <td style="padding: 2px;">NIM:</td>
                                    <td style="padding: 10px;"><input type="text" name="txtnim" value="<%=res.getString(1)%>" style="width: 100%; padding: 5px;"></td>
                                    <td style="padding: 10px;"><input type="submit" value="cari" name="cmdsimpan"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td style="padding: 2px;">Nama:</td>
                                    <td style="padding: 10px;"><input type="text" name="txtnama" value="<%=res.getString(2)%>" style="width: 100%; padding: 5px;"></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td style="padding: 2px;">Alamat:</td>
                                    <td style="padding: 10px;"><textarea name="txtalamat" rows="4" style="width: 100%; padding: 5px;"><%=res.getString(3)%></textarea></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align: center; padding: 10px;">
                                        <input type="submit" value="simpan" name="cmdsimpan" style="padding: 5px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 14px; cursor: pointer;">
                                        <input type="submit" value="ubah" name="cmdsimpan" style="padding: 5px 20px; background-color: #008CBA; color: white; border: none; border-radius: 14px; cursor: pointer;">
                                        <input type="submit" value="hapus" name="cmdsimpan" style="padding: 5px 20px; background-color: #f44336; color: white; border: none; border-radius: 14px; cursor: pointer;">
                                    </td>
                                </tr>
                            </table>
                        </form>
                    <%
                    found = true;
                    }
                    if (!found) {
                        out.println("<p style='text-align: center; font-size: 18px; color: red; font-weight: bold;'>Data tidak ditemukan</p>");
                    }
                    out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                    out.println("</div>");
                    conn.close();
                } catch (Exception e) {
                    out.println("<p style='text-align: center; font-size: 18px; color: red; font-weight: bold;'>Data tidak ditemukan</p>");
                    out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                    out.println("</div>");
                    out.print(e);
                }
            }
            // Mengubah isi Database
            if (dapat != null && dapat.equalsIgnoreCase("ubah")) {
                try {
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement st = conn.createStatement();
                    String sql = "UPDATE mahasiswa SET nama = '" + nama + "', alamat = '" + alamat + "' WHERE nim = '" + nim + "'";
                    int rowsAffected = st.executeUpdate(sql);
                    if (rowsAffected > 0) {
                        String ressql = "SELECT * FROM mahasiswa WHERE nim = '" + nim + "'";
                        ResultSet res = st.executeQuery(ressql);
                        out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                        out.println("<p style='text-align: center; font-size: 18px; color: green; font-weight: bold;'>Data berhasil diubah!</p>");
                        while (res.next()) {
                            %><p style='text-align:center;'><%
                            out.println("NIM: " + res.getString("nim") + "<br>");
                            out.println("Nama: " + res.getString("nama") + "<br>");
                            out.println("Alamat: " + res.getString("alamat") + "<br>");
                            %></p><%
                        }
                        out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                        out.println("</div>");
                    } else {
                        out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                        out.println("<p style='text-align: center; font-size: 18px; color: red; font-weight: bold;'>Data dengan NIM '" + nim + "' tidak ditemukan</p>");
                        out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                        out.println("</div>");
                    }
                    conn.close();
                } catch (Exception e) {
                    out.print(e);
                }
            }
            // Menghapus isi Database
            if (dapat != null && dapat.equalsIgnoreCase("hapus")) {
                try {
                    Koneksi konek = new Koneksi();
                    Connection conn = konek.bukaKoneksi();
                    Statement st = conn.createStatement();
                    String sql = "DELETE FROM mahasiswa WHERE nim = '" + nim + "'";
                    int rowsAffected = st.executeUpdate(sql);
                    if (rowsAffected > 0) {
                        out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                        out.println("<p style='text-align: center; font-size: 18px; color: green; font-weight: bold;'>Data dengan NIM '" + nim + "' berhasil dihapus!</p>");
                        out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                        out.println("</div>");
                    } else {
                        out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                        out.println("<p style='text-align: center; font-size: 18px; color: red; font-weight: bold;'>Data dengan NIM '" + nim + "' tidak ditemukan</p>");
                        out.println("<br><div style='text-align: center;'><a href='index.jsp' style='text-decoration: underline; color: blue;'>Kembali ke Halaman Utama</a></div>");
                        out.println("</div>");
                    }
                    conn.close();
                } catch (Exception e) {
                    out.print(e);
                }
            }
        %>
        <h1>Main/Data</h1>
    </body>
</html>
