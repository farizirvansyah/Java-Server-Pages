/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web;

import dao.MerekDAO;
import jakarta.servlet.RequestDispatcher;
import model.Merek;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
@WebServlet("/Merek")
public class MerekServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private MerekDAO merekDAO;

    /**
     *
     */
    @Override
    public void init() {
        merekDAO = new MerekDAO();
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    tambahMerek(request, response);
                    break;
                case "/delete":
                    hapusMerek(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    ubahMerek(request, response);
                    break;
                default:
                    daftarMerek(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void daftarMerek(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException, SQLException {
        List<Merek> daftarMerek = merekDAO.bacaMerek();
        request.setAttribute("daftarMerek", daftarMerek);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Merek.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String kode_merek = request.getParameter("kode_merek");
        Merek existingMerek = merekDAO.cariMerek(kode_merek);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Form.jsp");
        request.setAttribute("merek", existingMerek);
        dispatcher.forward(request, response);
    }

    private void tambahMerek(HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        String nama_merek = request.getParameter("nama_merek");
        Merek newMerek = new Merek(nama_merek);
        merekDAO.tambahMerek(newMerek);
        response.sendRedirect("list");
    }

    private void ubahMerek(HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        String kode_merek = request.getParameter("kode_merek");
        String nama_merek = request.getParameter("nama_merek");
        Merek book = new Merek(kode_merek, nama_merek);
        merekDAO.ubahMerek(book);
        response.sendRedirect("list");
    }

    private void hapusMerek(HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        String kode_merek = request.getParameter("kode_merek");
        merekDAO.hapusMerek(kode_merek);
        response.sendRedirect("list");
    }
}
