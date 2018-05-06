package com.EDMS.AccessingDao;

import com.EBMS.Dao.StudentDao;
import com.KPSCampusCare.bean.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD:EDMS/src/java/com/EDMS/AccessingDao/UploadFile.java
import com.oreilly.servlet.MultipartRequest;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
=======
>>>>>>> parent of 2aed2ee... Merge branch 'master' of https://github.com/ishminder/EDMS:EDMS/src/java/com/EDMS/AccessingDao/AdminRegistration.java

/**
 *
 * @author Ish
 */
<<<<<<< HEAD:EDMS/src/java/com/EDMS/AccessingDao/UploadFile.java

public class UploadFile extends HttpServlet {
=======
public class AdminRegistration extends HttpServlet {
>>>>>>> parent of 2aed2ee... Merge branch 'master' of https://github.com/ishminder/EDMS:EDMS/src/java/com/EDMS/AccessingDao/AdminRegistration.java

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
<<<<<<< HEAD:EDMS/src/java/com/EDMS/AccessingDao/UploadFile.java

        PrintWriter out = response.getWriter();
        HttpSession sessfile = request.getSession();
        System.out.print("Session v= " + sessfile.getAttribute("path"));

        //Object file_path =request.getAttribute("path");
        String file_name = request.getParameter("fname");
        String description =request.getParameter("description");
        String file_path = String.valueOf(sessfile.getAttribute("path"));
        System.out.print("filename = " + file_name + "Description = " + description + "path = " + file_path);
        MultipartRequest m = new MultipartRequest(request, file_path);
        out.print("successfully uploaded");
        Files f = new Files();
        f.setName(file_path + file_name);
        f.setDescription(description);
        int rowseff = FilesDao.register(f);
        System.out.println("Registered!!\n");
        if (rowseff > 0) {
            System.out.println("rows Effected!!" + rowseff);
        } else {
            System.err.println("No rows Effected!!");
        }
        System.out.print("running Request dispatcher");
        RequestDispatcher rd = request.getRequestDispatcher("viewFiles.jsp?name=" + sessfile.getAttribute("path"));
        rd.forward(request, response);

=======
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String admissNo = request.getParameter("admissNo");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        int classId = Integer.parseInt(request.getParameter("classId"));
        String password = request.getParameter("password");
        Student s = new Student();
        s.setName(name);
        s.setAddress(address);
        s.setClassId(classId);
        s.setEmail(email);
        s.setPassword(password);
        s.setPhone(phone);
        s.setAdmiss_no(Integer.parseInt(admissNo));
        int rowsEffected = StudentDao.register(s);
        if (rowsEffected > 0) {
            response.sendRedirect(request.getContextPath() + "/frontpage.jsp");
        } else {
            System.err.println("No rows Effected!!");
        }
>>>>>>> parent of 2aed2ee... Merge branch 'master' of https://github.com/ishminder/EDMS:EDMS/src/java/com/EDMS/AccessingDao/AdminRegistration.java
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
