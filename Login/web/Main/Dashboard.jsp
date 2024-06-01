<%-- 
    Document   : dashboard
    Created on : 10 Apr 2024, 09.48.51
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="usermanagement.dao.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard</title>
        <link rel="stylesheet" href="mainstyle.css">
        <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet"/>
    </head>
    <body>
        <jsp:include page="Sidebar.jsp"/>
        <section class="home-section">
            <div class="home-content">
                <i class='bx bx-menu'></i>
                <span class="text">Dashboard</span>
            </div>

            <div class="home-content">
                <a href="Dashboard.jsp" style="margin: 0px 15px 0px 20px; text-decoration: none;">Dashboard</a>
                <a>|</a>
                <a href="Barang.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Barang</a>
                <a>|</a>
                <a href="Pembelian.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Pembelian</a>
                <a>|</a>
                <a href="Penjualan.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Penjualan</a>
                <a>|</a>
                <a href="PengeluaranOperasional.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Pengeluaran Operasional</a>
                <a>|</a>
                <a href="StokPersediaan.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Stok Persediaan</a>
                <a>|</a>
                <a href="Laporan.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Laporan</a>
                <a>|</a>
                <a href="SupplierCustomer.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Supplier & Customer</a>
                <a>|</a>
                <a href="KategoriMerek.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Kategori & Merek</a>
                <a>|</a>
                <a href="Riwayat.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Riwayat</a>
                <a>|</a>
                <a href="Pengaturan.jsp" style="margin: 0px 15px 0px 15px; text-decoration: none;">Pengaturan</a>
            </div>

            <div class="isi-content">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque condimentum erat in ante rutrum gravida. Etiam sagittis tempus nisl, eu consequat ipsum blandit et. Nullam condimentum sit amet metus a hendrerit. Sed porttitor non nisi eu rutrum. Vivamus tristique ex at risus semper, et placerat lorem rutrum. Suspendisse posuere dolor lorem, nec faucibus magna ullamcorper nec. Donec ut arcu hendrerit, euismod neque eu, feugiat odio. Sed vehicula dolor quam, nec semper enim mattis sit amet. Aliquam ut turpis libero. Duis rhoncus nunc dapibus imperdiet ornare. Suspendisse velit ex, tincidunt vel fringilla sed, pretium et libero.
                    In hendrerit nunc lectus, sed iaculis dui finibus quis. Proin eget laoreet leo. Fusce consequat aliquam dignissim. Suspendisse in erat urna. Quisque lobortis, ligula sed bibendum congue, eros risus eleifend tortor, et malesuada lacus orci quis justo. Phasellus porta mattis euismod. Praesent id faucibus est. Suspendisse rhoncus aliquam augue sed dictum.
                    Donec nec tristique lectus. Proin elementum eu velit ut suscipit. Sed sollicitudin semper mi non consectetur. In hac habitasse platea dictumst. Integer eu turpis lobortis, accumsan neque eu, dignissim augue. Etiam maximus mattis diam, non sollicitudin tortor aliquam in. Donec placerat quam sapien, nec vestibulum diam pharetra at.</p>
            </div>
        </section>
        <script src="Sidebar.js"></script>
    </body>
</html>