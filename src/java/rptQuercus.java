/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.*;
import com.itextpdf.text.Font;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Image;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Element;
import java.io.OutputStream;
import javax.swing.JOptionPane;
import java.sql.*;

/**
 *
 * @author cristhian.gonzalez
 */
@WebServlet(urlPatterns = {"/rptQuercus"})
public class rptQuercus extends HttpServlet {

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
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        try {

            try {
                Connection con = null;
                Statement st = null;
                ResultSet rs = null;
                String user;
                String password;

                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = (Connection) DriverManager.getConnection("jdbc:derby://localhost:1527/Quercus", user = "Quercus", password = "1234");
                st = con.createStatement();
                rs = st.executeQuery("SELECT * FROM QUERCUS.CLIENTE");

                if (con != null) {
                    try {
                        /*Crear el documento*/
                        Document documento = new Document(PageSize.A4);
                        
                        /*Comando para escribir en el documento*/
                        PdfWriter.getInstance(documento, out);
                        
                        /*Se abre el documento*/
                        documento.open();
                        
                        /*Logo*/
//                        Image imagen = Image.getInstance("C:\\Users\\Francisco Silva\\Downloads\\Quercus_Tienda_4.0\\Quercus_Tienda\\build\\web\\img\\logo.png");
//                        imagen.setAlignment(Element.ALIGN_LEFT);
//                        imagen.scaleToFit(70, 70);
//                        documento.add(imagen);
                        
                        /*Se crear un parrrafo y se añade el título, con sus parametros*/
                        Paragraph par1 = new Paragraph();
                        Font fontTitulo = new Font(Font.FontFamily.HELVETICA, 16, Font.BOLD, BaseColor.BLUE);
                        par1.add(new Phrase("Reporte Clientes", fontTitulo));
                        par1.setAlignment(Element.ALIGN_CENTER);
                        par1.add(new Phrase(Chunk.NEWLINE));
                        par1.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par1);
                        
                        /*Se crear un parrrafo y se añade una descripción, con sus parametros*/
                        Paragraph par2 = new Paragraph();
                        Font fontDescrip = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.BLACK);
                        par2.add(new Phrase("Este es un reporte de los clientes que se han registrado en nuestra pagina hasta el momento", fontDescrip));
                        par2.setAlignment(Element.ALIGN_JUSTIFIED);
                        par2.add(new Phrase(Chunk.NEWLINE));
                        par2.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par2);
                        
                        /*Se crea la primera fila con la columna del encabezado*/
                        PdfPTable tabla = new PdfPTable(5);
                        PdfPCell celda1 = new PdfPCell(new Paragraph("ID", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.DARK_GRAY)));
                        PdfPCell celda2 = new PdfPCell(new Paragraph("NOMBRE", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.DARK_GRAY)));
                        PdfPCell celda3 = new PdfPCell(new Paragraph("APELLIDOS", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.DARK_GRAY)));
                        PdfPCell celda4 = new PdfPCell(new Paragraph("TELÉFONO", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.DARK_GRAY)));
                        PdfPCell celda5 = new PdfPCell(new Paragraph("CIUDAD", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.DARK_GRAY)));
                        
                        /*Se añanden las columnas a la tabla*/
                        tabla.addCell(celda1);
                        tabla.addCell(celda2);
                        tabla.addCell(celda3);
                        tabla.addCell(celda4);
                        tabla.addCell(celda5);
                        
                        /*Ciclo que recorre la base de datos y llena la tabla*/
                        while (rs.next()) {
                            tabla.addCell(rs.getString("id_Cliente"));
                            tabla.addCell(rs.getString("nombres"));
                            tabla.addCell(rs.getString("apellidos"));
                            tabla.addCell(rs.getString("telefono"));
                            tabla.addCell(rs.getString("ciudad"));
                        }
                        
                        /*Se añade la tabla al documento*/
                        documento.add(tabla);
                        
                        /*Se cierra el documento*/
                        documento.close();

                    } catch (Exception ex) {
                        ex.getMessage();
                    }
                }

            } catch (Exception ex) {
                ex.getMessage();
            }

        } finally {
            out.close();
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
