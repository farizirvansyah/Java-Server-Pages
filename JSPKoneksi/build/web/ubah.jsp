<%-- 
    Document   : ubah.jsp
    Created on : 5 Apr 2024, 15.11.31
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nim=request.getParameter("txtnim");
            String nama=request.getParameter("txtnama");
            String alamat=request.getParameter("txtalamat");
            String dapat=request.getParameter("cmdsimpan");
            if(dapat.toString().equals("ubah")){
                try{
                Koneksi konek=new Koneksi();
                Connection conn=konek.bukaKoneksi();
                Statement st=conn.createStatement();
                String sql = "UPDATE mahasiswa SET nama = '" + nama + "', alamat = '" + alamat + "' WHERE nim = '" + nim + "'";
                st.executeUpdate(sql);
                String ressql = "SELECT * FROM mahasiswa WHERE nim = '" + nim + "'";
                ResultSet res = st.executeQuery(ressql);
                out.println("<div style='background-color: #e6f7ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;'>");
                out.println("<p style='font-size: 18px; color: green; font-weight: bold;'>Data berhasil diubah!</p>");
                while (res.next()) {
                    out.println("NIM: " + res.getString("nim") + "<br>");
                    out.println("Nama: " + res.getString("nama") + "<br>");
                    out.println("Alamat: " + res.getString("alamat") + "<br>");
                }
                out.println("<br><a href='index.jsp' style='text-decoration: none; color: blue;'>Kembali ke Halaman Utama</a>");
                out.println("</div>");
                conn.close();
                }
                catch(Exception e)
                {
                    out.print(e);
                }
            }
        %>
    </body>
</html>
