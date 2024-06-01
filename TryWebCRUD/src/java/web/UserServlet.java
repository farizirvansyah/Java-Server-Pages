/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package web;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;
import dao.UserDAO;
import model.User;

/**
 *
 * @author Administrator
 */
@WebServlet("/Login")
public class UserServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private UserDAO userdao;

    @Override
    public void init() {
        userdao = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id_user");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String nama = request.getParameter("nama_user");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        try {
            if (userdao.validate(user)) {
                HttpSession session = request.getSession();
                session.setAttribute("id_user", id);
                session.setAttribute("username", username);
                session.setAttribute("nama_user", nama);
                response.sendRedirect("Main/Dashboard/Dashboard.jsp");
            } else {
                // Set alert message
                String alertMessage = "Username atau Password Anda salah.";
                HttpSession session = request.getSession();
                session.setAttribute("alert", alertMessage);
                session.setAttribute("username", username);
                response.sendRedirect("Landing/Login.jsp?alert=1");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
