/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Nomina;

/**
 *
 * @author diant
 */
public class Proceso extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
          String nom = request.getParameter("txtNom");
        String dni = request.getParameter("txtDni");
        int sal = Integer.parseInt(request.getParameter("txtSal")) ;
        int dia = Integer.parseInt(request.getParameter("txtDia")) ;
        
        String error ="";
        
        
         if(dni.trim().equals("")){
            error="Incompleto";
           request.getSession().setAttribute("error", error);
           request.getRequestDispatcher("error.jsp").forward(request, response);
           
       }else{
             Nomina no = new Nomina(nom,dni,sal,dia);
               
             ArrayList<Nomina> nominas = ( ArrayList<Nomina> )request.getSession().getAttribute("nominas");
              if(nominas==null){
                  
                  nominas = new ArrayList();
                  nominas.add(no);
                  request.getSession().setAttribute("nominas", nominas);
                  request.getRequestDispatcher("tabla.jsp").forward(request, response);
              }
              else{
                  nominas.add(no);
                  request.getSession().setAttribute("nominas", nominas);
                  request.getRequestDispatcher("tabla.jsp").forward(request, response);
                  
              }      
         }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
