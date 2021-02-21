/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.kulbachinskiy.myproject;

import javax.servlet.http.HttpServletRequest;

public abstract class Application {

    protected MyInterface dama;
    public Application() {
    }
    
    public void setDama(HttpServletRequest request){
        dama = new Dama(
        request.getParameter("name"),
        request.getParameter("gender"),
        request.getParameterValues("language"),
        request.getParameter("country"),false);
    }
    
    public abstract void setDama(HttpServletRequest request, boolean isLove);
    
    final public MyInterface getDama(){
    return dama;
    }

    
}