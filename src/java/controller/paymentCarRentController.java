/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import dal.BookingDao;
import dal.CarRentDao;
import dal.PlaceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AccountUser;
import model.Room;

/**
 *
 * @author LongBody
 */
public class paymentCarRentController extends HttpServlet {

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
           response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        /* TODO output your page here. You may use following sample code. */
        String name = request.getParameter("email");
        String quantity = request.getParameter("quantity");
        String dobBefore = request.getParameter("dobBefore");
        String dobAfter = request.getParameter("dobAfter");

        Cookie cookie = null;
        Cookie[] cookies = null;
        String email = "";
        String password = "";
        String phone = "";
        // Get an array of Cookies associated with this domain
        cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if (cookie.getName().equals("email")) {
                    email = cookie.getValue();
                }
                if (cookie.getName().equals("password")) {
                    password = cookie.getValue();
                }
                if (cookie.getName().equals("phone")) {
                    phone = cookie.getValue();
                }

            }
        }
        AccountDAO dao = new AccountDAO();
        AccountUser account = dao.getAccountByUP(email, password);

        if (account != null) {
            request.setAttribute("name", account.getName());
            request.setAttribute("email", account.getEmail());
            request.setAttribute("phone", account.getPhone());
        }
        int quantityparse = Integer.parseInt(quantity);
        int price = 1399999 * quantityparse;

        CarRentDao car = new CarRentDao();
        car.insertCarRent(email, dobBefore, dobAfter, quantityparse, price);
        request.setAttribute("totalprice", price + "");
        request.setAttribute("dayBetween", quantityparse + "");
        request.setAttribute("sum", price + "");
        request.setAttribute("checkin", dobBefore);
        request.setAttribute("checkout", dobAfter);
        request.setAttribute("success", "Bạn đã đặt xe thành công");
        request.getRequestDispatcher("handlerCarRent.jsp").forward(request, response);
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
