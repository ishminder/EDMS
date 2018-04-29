package com.EBMS.AccessingDao;

import com.EBMS.Dao.LoginDao;
import com.EBMS.Dao.StaffDao;
import com.EBMS.Dao.StudentDao;
import com.EBMS.bean.Login;
import com.KPSCampusCare.bean.Staff;
import com.KPSCampusCare.bean.Student;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginRequest extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String type = request.getParameter("user");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Login l = new Login();
        l.setEmail(email);
        l.setUserType(type);
        l.setPassword(password);
        String name = LoginDao.loginCheck(l);
        HttpSession ss = request.getSession();
        ss.setAttribute("type", type);
        if (type.equals("student")) {
            Student s = StudentDao.retrieveDetails(name);
            if (s != null) {
                HttpSession session1 = request.getSession();
                session1.setAttribute("classId", s.getClassId());
            }
        }
        if (type.equals("staff")) {
            Staff s = StaffDao.retrieveDetails(name);
            if (s != null) {
                HttpSession session1 = request.getSession();
                session1.setAttribute("staffId", s.getStaff_id());
                session1.setAttribute("class_id", s.getClass_id());
            }
        }
        if (name != null) {
            HttpSession session = request.getSession();
            session.setAttribute("name", name);
            session.setAttribute("role", type);

            response.sendRedirect(request.getContextPath() + "/" + type + "/home.jsp");
        } else {
            request.setAttribute("ErrorLogin", "Incorrect email or password! Please try again.");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp?user=" + request.getParameter("user"));
            rd.forward(request, response);
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
