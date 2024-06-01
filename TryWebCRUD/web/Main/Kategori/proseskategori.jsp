<%-- 
    Document   : proseskategori
    Created on : 7 Mei 2024, 11.15.11
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kategori</title>
    </head>
    <body>
        <%
            String tombol1 =  request.getParameter("btn-submitkat");
            String kdkat = request.getParameter("kodektg");
            String nmkat = request.getParameter("namaktg");
            String no_auto = "0001";
            String nol_plus = "";
            
            try{
                Koneksi konek = new Koneksi();
                Connection conn = konek.bukaKoneksi();
                Statement st = conn.createStatement();
                String sql = "Select Max(right(kode_kategori,4)) as urutan from kategori";
                ResultSet rs =  st.executeQuery(sql);
                while(rs.next()) {
                  int p;
                  no_auto = Integer.toString(rs.getInt(1)+1);
                  p = no_auto.length();
                  nol_plus = "";
                  for(int i=0;i<4-p;i++ ){
                  nol_plus = nol_plus + "0";
                    }
                }
            }
            catch (Exception e)
            {
                out.print(e);
            }
          if(tombol1 != null && tombol1.toString().equals("simpan-kat")){
            if(nmkat == null || nmkat.trim().isEmpty()){
                out.println("<script>alert('Nama Kategori Tidak Boleh Kosong!');</script>");
                out.println("<a href='Kategori.jsp'>Back</a>");
            }
            else{
                Koneksi konek = new Koneksi();
                Connection conn = konek.bukaKoneksi();
                Statement st = conn.createStatement();
                String sql1 = "INSERT INTO kategori(kode_kategori,nama_kategori)"+ "values('"+kdkat+"', '"+nmkat+"')";
                st.executeUpdate(sql1);
                conn.close();
                //alert("Berhasil Disimpan");
                out.print("<h1>Berhasil Disimpan</h1>");
                out.println("<a href='../Dashboard/Dashboard.jsp'>Back</a>");
                }
        %>
    </body>
</html>
