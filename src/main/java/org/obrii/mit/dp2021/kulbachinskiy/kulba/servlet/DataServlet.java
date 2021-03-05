/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.kulbachinskiy.kulba.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.obrii.mit.dp2021.kulbachinskiy.kulba.data.Data;
import org.obrii.mit.dp2021.kulbachinskiy.kulba.storeHouse.StoreCrud;

/**
 *
 * @author danik
 */
public class DataServlet extends HttpServlet {

    StoreCrud storeCrud = new StoreCrud();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("data", storeCrud.readData());
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        storeCrud.createData(
                new Data(
                        Integer.parseInt(request.getParameter("id")),
                        request.getParameter("name"),
                        Integer.parseInt(request.getParameter("age"))
                )
        );

        doGet(request, response);

    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int myId;
        myId = Integer.parseInt(request.getParameter("id"));
        storeCrud.updateData(myId,
                new Data(
                        myId,
                        request.getParameter("name"),
                        Integer.parseInt(request.getParameter("age"))
                )
        );

        doGet(request, response);
    }

    

    
    
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int myId = Integer.parseInt(request.getParameter("id"));
        storeCrud.deleteData(myId);

        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
