package com.EBMS.AccessingDao;

import com.EBMS.Dao.StudentDao;
import com.KPSCampusCare.bean.Student;
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
public class AdminRegistration extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
