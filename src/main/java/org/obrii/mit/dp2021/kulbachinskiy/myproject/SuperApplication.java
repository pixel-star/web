package org.obrii.mit.dp2021.kulbachinskiy.myproject;

import javax.servlet.http.HttpServletRequest;

public  class SuperApplication extends Application {

    @Override
    public  void setDama(HttpServletRequest request, boolean isLove) {
        dama = new Dama(

                request.getParameter("name"),
                request.getParameter("gender"),
                request.getParameterValues("language"),
                request.getParameter("country"),isLove);
    }
}