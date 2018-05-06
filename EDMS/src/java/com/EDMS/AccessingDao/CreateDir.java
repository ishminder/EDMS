package com.EDMS.AccessingDao;

import com.EDMS.Dao.PfolderDao;
import com.EDMS.bean.Pfolder;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ish
 */
public class CreateDir extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String path = request.getParameter("path");
        String dirname = request.getParameter("dirname");
         String description = request.getParameter("description");
       try{
    String strDirectoy =dirname;

    // Create one directory
    boolean success = (new File(path+strDirectoy)).mkdir();
    if (success) {
      System.out.println("Directory: " + strDirectoy + " created");
       
      Pfolder p=new Pfolder();
        p.setName(dirname);
        p.setPath(path+dirname);
        p.setDescription(description);
        
        int rowsEff=PfolderDao.register(p);
        System.out.println("Registered!!\n"); 
        if (rowsEff > 0)
        {
         System.out.println("rows Effected!!"+rowsEff);
        }
          else 
        {
            System.err.println("No rows Effected!!"); 
        }
    }    


  
         // Create multiple directories
    /*success = (new File(strManyDirectories)).mkdirs();
    if (success) {
      System.out.println("Directories: " + strManyDirectories + " created");
    }*/

    }catch (Exception e){//Catch exception if any
      System.err.println("Error: " + e.getMessage());
    }
       System.out.println("Successfully created directory");
       response.sendRedirect(request.getContextPath()+"/home.jsp");
       
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
