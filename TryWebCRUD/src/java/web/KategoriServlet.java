/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web;

import dao.KategoriDAO;
import model.Kategori;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet("/Kategori")
public class KategoriServlet extends HttpServlet {

    private final KategoriDAO kategoriDAO;

    public KategoriServlet() {
        this.kategoriDAO = new KategoriDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "list"; // default action
        }

        switch (action) {
            case "r":
                listKategori(request, response);
                break;
            case "c":
                showNewForm(request, response);
                break;
            case "u":
                showEditForm(request, response);
                break;
            case "d":
                deleteKategori(request, response);
                break;
            default:
                listKategori(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "tambah":
                addKategori(request, response);
                break;
            case "ubah":
                editKategori(request, response);
                break;
            default:
                listKategori(request, response);
        }
    }

    private void listKategori(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Kategori> daftarKategori = kategoriDAO.bacaKategori();
        request.setAttribute("daftarKategori", daftarKategori);
        request.getRequestDispatcher("Kategori.jsp").forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Form.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String kodeKategori = request.getParameter("kode_kategori");
        Kategori dapatKategori = kategoriDAO.cariKategori(kodeKategori);
        if (dapatKategori != null) {
            request.setAttribute("kategori", dapatKategori);
            request.getRequestDispatcher("Update.jsp").forward(request, response);
        } else {
            response.sendRedirect("Main/Error.jsp");
        }
    }

    private void addKategori(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String kodeKategori = request.getParameter("kode_kategori");
        String namaKategori = request.getParameter("nama_kategori");
        Kategori kategori = new Kategori(kodeKategori, namaKategori);
        kategoriDAO.tambahKategori(kategori);
        response.sendRedirect(request.getContextPath() + "list");
    }

    private void editKategori(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String kodeKategori = request.getParameter("kode_kategori");
        String namaKategori = request.getParameter("nama_kategori");
        Kategori kategori = new Kategori(kodeKategori, namaKategori);
        kategoriDAO.ubahKategori(kategori);
        response.sendRedirect(request.getContextPath() + "list");
    }

    private void deleteKategori(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String kodeKategori = request.getParameter("kode_kategori");
        kategoriDAO.hapusKategori(kodeKategori);
        response.sendRedirect(request.getContextPath() + "list");
    }
}
