<%-- 
    Document   : Sidebar
    Created on : 10 Apr 2024, 15.18.04
    Author     : Administrator
--%>

<link rel="stylesheet" href="mainstyle.css">
<link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css" rel="stylesheet"/>
<div class="sidebar close">
    <div class="logo-details">
        <i class='bx bxl-java'></i>
        <span class="logo_name">Fariz Irvansyah</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="Dashboard.jsp">
                <i class='bx bx-home-alt icon' ></i>
                <span class="link_name">Dashboard</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="Dashboard.jsp">Dashboard</a></li>
            </ul>
        </li>

        <li>
            <a href="Barang.jsp">
                <i class='bx bx-package icon'></i>
                <span class="link_name">Barang</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="Barang.jsp">Barang</a></li>
            </ul>
        </li>

        <li>
            <a href="Pembelian.jsp">
                <i class='bx bx-dollar icon'></i>
                <span class="link_name">Pembelian</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="Pembelian.jsp">Pembelian</a></li>
            </ul>
        </li>

        <li>
            <a href="Penjualan.jsp">
                <i class='bx bx-cart'></i>
                <span class="link_name">Penjualan</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="Penjualan.jsp">Penjualan</a></li>
            </ul>
        </li>

        <li>
            <a href="PengeluaranOperasional.jsp">
                <i class='bx bx-wallet'></i>
                <span class="link_name">Pengeluaran Operasional</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="PengeluaranOperasional.jsp">Pengeluaran Operasional</a></li>
            </ul>
        </li>

        <li>
            <div class="iocn-link">
                <a href="StokPersediaan.jsp">
                    <i class='bx bxs-inbox'></i>
                    <span class="link_name">Stok Persediaan</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="StokPersediaan.jsp">Stok Persediaan</a></li>
                <li><a href="#">Ada</a></li>
                <li><a href="#">Kosong</a></li>
            </ul>
        </li>

        <li>
            <div class="iocn-link">
                <a href="Laporan.jsp">
                    <i class='bx bx-line-chart' ></i>
                    <span class="link_name">Laporan</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="Laporan.jsp">Laporan</a></li>
                <li><a href="#">ex1</a></li>
                <li><a href="#">ex2</a></li>
            </ul>
        </li>

        <li>
            <div class="iocn-link">
                <a href="SupplierCustomer.jsp">
                    <i class='bx bx-group' ></i>
                    <span class="link_name">Supplier & Customer</span>
                </a>
                <i class='bx bxs-chevron-down arrow' ></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="SupplierCustomer.jsp">Supplier & Customer</a></li>
                <li><a href="DataSupplier.jsp">Data Supplier</a></li>
                <li><a href="DataCustomer.jsp">Data Customer</a></li>
            </ul>
        </li>

        <li>
            <div class="iocn-link">
                <a href="KategoriMerek.jsp">
                    <i class='bx bxs-purchase-tag'></i>
                    <span class="link_name">Kategori & Merek</span>
                </a>
                <i class='bx bxs-chevron-down arrow'></i>
            </div>
            <ul class="sub-menu">
                <li><a class="link_name" href="KategoriMerek.jsp">Kategori & Merek</a></li>
                <li><a href="Kategori.jsp">Kategori</a></li>
                <li><a href="Merek.jsp">Merek</a></li>
            </ul>
        </li>

        <li>
            <a href="Riwayat.jsp">
                <i class='bx bx-history'></i>
                <span class="link_name">Riwayat</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="Riwayat.jsp">Riwayat</a></li>
            </ul>
        </li>

        <li>
            <a href="Pengaturan.jsp">
                <i class='bx bx-cog' ></i>
                <span class="link_name">Pengaturan</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="Pengaturan.jsp">Pengaturan</a></li>
            </ul>
        </li>

        <li>
            <div class="profile-details">
                <div class="profile-content">
                    <img src="image/profile.jpg" alt="profileImg">
                </div>
                <div class="name-job">
                    <div class="profile_name">user</div>
                    <div class="job">role</div>
                </div>
                <i class='bx bx-log-out' ></i>
            </div>
        </li>
    </ul>
</div>