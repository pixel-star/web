package org.obrii.mit.dp2021.kulbachinskiy.myproject;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FormServlet", urlPatterns = {"/form"})
public class FormServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("form.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Application data = new SuperApplication();
        
        if(request.getParameter("isAdmin")!=null) {
            data.setDama(request, true);
        }
        else data.setDama(request);
        
        request.setAttribute("data", data);
        request.getRequestDispatcher("submit.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}