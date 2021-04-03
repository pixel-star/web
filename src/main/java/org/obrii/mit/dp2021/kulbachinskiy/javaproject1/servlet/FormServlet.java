
package org.obrii.mit.dp2021.kulbachinskiy.javaproject1.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "FormServlet", urlPatterns = {"/form"})
public class FormServlet extends HttpServlet {
    
    DatabServlet dataServlet = new DatabServlet();

     @Override
    public void init(ServletConfig config) throws ServletException {
    super.init(config);
    dataServlet = new DatabServlet();
    dataServlet.init(config);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dataServlet.doDelete(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        dataServlet.doPut(request, response);
    }
}
