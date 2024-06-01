/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package usermanagement.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import usermanagement.dao.loginDAO;
import usermanagement.model.LoginBean;

/**
 *
 * @author Administrator
 */
@WebServlet("/Login")
public class loginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private loginDAO loginDao;

    /**
     *
     */
    @Override
    public void init() {
        loginDao = new loginDAO();
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

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.validate(loginBean)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("Main/Dashboard.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("Landing/Login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
