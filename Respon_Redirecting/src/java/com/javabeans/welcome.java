/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javabeans;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

/**
 *
 * @author Administrator
 */

@WebServlet (name = "welcome", urlPatterns = {"/welcome"})
public class welcome extends HttpServlet{

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out= response.getWriter();
        try
        {
            out.println("<h2>Welcome User</h2>");
        }
        finally
        {
            out.close();
        }
    }
}