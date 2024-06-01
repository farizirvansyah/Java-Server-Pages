/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web;

import dao.BarangDAO;
import model.Barang;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author Administrator
 */
@WebServlet("/BarangServlet")
public class BarangServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "list"; // default action
        }

        switch (action) {
            case "list":
                listBarang(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteBarang(request, response);
                break;
            default:
                listBarang(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "list"; // default action
        }

        switch (action) {
            case "add":
                addBarang(request, response);
                break;
            case "update":
                updateBarang(request, response);
                break;
            default:
                listBarang(request, response);
        }
    }

    private void listBarang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Barang> daftarBarang = new BarangDAO().bacaBarang();
        request.setAttribute("daftarBarang", daftarBarang);
        request.getRequestDispatcher("Barang.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sku = request.getParameter("sku");
        Barang barang = new BarangDAO().cariBarang(sku);
        request.setAttribute("barang", barang);
        request.getRequestDispatcher("Update.jsp").forward(request, response);
    }

    private void addBarang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sku = request.getParameter("sku");
        String nama_barang = request.getParameter("nama_barang");
        int harga_jual = Integer.parseInt(request.getParameter("harga_jual"));
        int harga_beli = Integer.parseInt(request.getParameter("harga_beli"));
        String kode_kategori = request.getParameter("kode_kategori");
        String kode_merek = request.getParameter("kode_merek");
        int stok = Integer.parseInt(request.getParameter("stok"));
        String keterangan = request.getParameter("keterangan");

        Barang barang = new Barang(sku, nama_barang, harga_jual, harga_beli, kode_kategori, kode_merek, stok, keterangan);
        new BarangDAO().tambahBarang(barang);

        response.sendRedirect("Barang.jsp");
    }

    private void updateBarang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sku = request.getParameter("sku");
        String nama_barang = request.getParameter("nama_barang");
        int harga_jual = Integer.parseInt(request.getParameter("harga_jual"));
        int harga_beli = Integer.parseInt(request.getParameter("harga_beli"));
        String kode_kategori = request.getParameter("kode_kategori");
        String kode_merek = request.getParameter("kode_merek");
        int stok = Integer.parseInt(request.getParameter("stok"));
        String keterangan = request.getParameter("keterangan");

        Barang barang = new Barang(sku, nama_barang, harga_jual, harga_beli, kode_kategori, kode_merek, stok, keterangan);
        new BarangDAO().ubahBarang(barang);

        response.sendRedirect("BarangServlet");
    }

    private void deleteBarang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sku = request.getParameter("sku");
        new BarangDAO().hapusBarang(sku);
        response.sendRedirect("BarangServlet");
    }
}
