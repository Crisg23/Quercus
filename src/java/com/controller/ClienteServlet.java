/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dao.ClienteDaoLocal;
import com.model.Cliente;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author juan.rios27
 */
public class ClienteServlet extends HttpServlet {

    @EJB
    private ClienteDaoLocal clienteDao;

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

        String action = request.getParameter("action");

        String id_Cliente = request.getParameter("id_Cliente");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String e_mail = request.getParameter("e_mail");
        String telefono = request.getParameter("telefono");
        String ciudad = request.getParameter("ciudad");
        String contrasena = request.getParameter("contrasena");

        Cliente cliente = new Cliente(id_Cliente, nombres, apellidos, e_mail, telefono, ciudad, contrasena);

        if ("Add".equalsIgnoreCase(action)) {
            clienteDao.addCliente(cliente);
            response.sendRedirect("index.jsp");

        } else if ("Search".equalsIgnoreCase(action)) {

            cliente = clienteDao.getCliente(id_Cliente);
            if (cliente != null && cliente.getContrasena().equalsIgnoreCase(request.getParameter("contrasena"))) {
                  response.sendRedirect("principal.jsp");
          
            }else{
                 response.sendRedirect("index.jsp");
            }
       

        } else if ("Clientes".equalsIgnoreCase(action)) {
            request.setAttribute("allClientes", clienteDao.getAllClientes());
            request.getRequestDispatcher("nuestros-clientes.jsp").forward(request, response);

        } else if ("borrar".equalsIgnoreCase(action)) {

            clienteDao.borrarCliente(id_Cliente);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        response.setContentType("text/html;charset=UTF-8");

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
