<%-- 
    Document   : proses
    Created on : 7 Mei 2024, 10.56.04
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="jdbc.Koneksi" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proses Barang</title>
    </head>
    <body>
        <%
            String kdbarang = request.getParameter("kodebrg");
            String nmbarang = request.getParameter("namabrg");
            String jualbrg = request.getParameter("harga_jualbrg");
            String belibrg = request.getParameter("harga_belibrg");
            String kategoribrg = request.getParameter("kategoribrg");
            String merekbrg = request.getParameter("merekbrg");
            String stockbrg = request.getParameter("stok_minimalbrg");
            String keteranganbrg = request.getParameter("keteranganbrg");
            String tombol = request.getParameter("btn-simpan");
            String no_autob = "000001";
            String nol_plusb = "";
        
        try{
                Koneksi konek = new Koneksi();
                Connection conn = konek.bukaKoneksi();
                Statement st = conn.createStatement();
                String sql = "Select Max(right(kdbarang,6)) as urutan from barang";
                
                ResultSet rs =  st.executeQuery(sql);
                while(rs.next()) {
                  int p;
                  no_autob = Integer.toString(rs.getInt(1)+1);
                  p = no_autob.length();
                  nol_plusb = "";
                  for(int i=0;i<6-p;i++ ){
                  nol_plusb = nol_plusb + "0";
                    }
                }
                    
            }
            catch (Exception e)
            {
                out.print(e);
            }
          if(tombol != null && tombol.toString().equals("simpan")){
            if(nmbarang == null | nmbarang.trim().isEmpty()){
                out.println("<script>alert('Nama barang Tidak Boleh Kosong!');</script>");
                out.println("<a href='Form.jsp'>Back to barang</a>");
            }
            else{
                Koneksi konek = new Koneksi();
                Connection conn = konek.bukaKoneksi();
                Statement st = conn.createStatement();
                String sql1 = "INSERT INTO barang(sku, nama_barang, harga_jual, harga_beli, kode_kategori, kode_merek, stok, keterangan)"+ "values('"+kdbarang+"', '"+nmbarang+"','"+jualbrg+"','"+belibrg+"','"+kategoribrg+"','"+merekbrg+"','"+stockbrg+"','"+keteranganbrg+"')";
                st.executeUpdate(sql1);
                conn.close();
                //alert("Berhasil Disimpan");
                out.print("<h1>Berhasil Disimpan</h1>");
                out.println("<a href='../Dashboard/Dashboard.jsp'>Back</a>");
                }
        
        %>
    </body>
</html>
