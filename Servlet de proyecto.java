package servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ajuch
 */
@WebServlet(name = "Servlet", urlPatterns = {"/control.do"}) /// el nombre control.do se puede cambiar si se desea
public class Servlet extends HttpServlet {

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
        
        String codigo = request.getParameter("Codigo");
        String dpi = request.getParameter("txtDPI");
        String nombrePersona = request.getParameter("txtNombre");
        
        int DPI=0;
        String Persona="";
        String mensaje="";
        String error="";
        
        try{
            DPI = Integer.parseInt(dpi);
        }catch(NumberFormatException e){
            error="Error,verifique que solo sean numeros";
        }
        if(error.isEmpty()){
            // si no hay errores, se aceptaran los datos
            
        }else{
            //si no motrar el error
            request.setAttribute("error",error);

        }
        
        
        try{
            Persona = nombrePersona;
                }catch(NumberFormatException e){
                    error="No se reconoce el nombre de u suario";
        if(error.isEmpty()){
            // si no hay errores, se aceptaran los datos
            
        }else{
            //si no motrar el error
            request.setAttribute("error",error);    
        }



        request.getRequestDispatcher("nombrede vista").forward(request,response);
        // en el parentesis y dentro e la comilla se agrega el nombre de la vista.



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
}