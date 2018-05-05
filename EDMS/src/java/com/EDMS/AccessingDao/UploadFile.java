package com.EDMS.AccessingDao;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Ish
 */
public class UploadFile extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        HttpSession sessfile = request.getSession();
       System.out.print("Session v= "+sessfile.getAttribute("path"));

//Object file_path =request.getAttribute("path");
        String file_name = request.getParameter("name");

        String file_path = String.valueOf(sessfile.getAttribute("path"));
        System.out.print("path = " + file_path);
        MultipartRequest m = new MultipartRequest(request, file_path);
        out.print("successfully uploaded");
        

        RequestDispatcher rd = request.getRequestDispatcher("viewFiles.jsp?name=" +sessfile.getAttribute("path") );
        rd.forward(request, response);

    }

         // Create multiple directories
    /*success = (new File(strManyDirectories)).mkdirs();
     if (success) {
     System.out.println("Directories: " + strManyDirectories + " created");
     }*/
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
