/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import dal.BookingDao;
import dal.PlaceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AccountUser;
import model.Booking;
import model.LikeRoom;
import model.Room;

/**
 *
 * @author LongBody
 */
public class listLikeController extends HttpServlet {

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
        Cookie cookie = null;
        Cookie[] cookies = null;
        String email = "";
        String password = "";
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

            }
        }
        AccountDAO dao = new AccountDAO();
        AccountUser account = dao.getAccountByUP(email, password);
        PlaceDAO dal = new PlaceDAO();

        ArrayList<LikeRoom> history = dal.getLikeRoomsByEmail(account.getEmail());
        ArrayList<Room> rooms = dal.getRooms();
        
        for (int counter = 0; counter < rooms.size(); counter++) {
                for (int i = 0; i < history.size(); i++) {
                    if (rooms.get(counter).getId() == history.get(i).getIdRoom()) {
                        history.get(i).setImageRoom(rooms.get(counter).getImageRoom());
                        history.get(i).setPrice(rooms.get(counter).getPrice());
                       
                    }
                }
            }
        

        request.setAttribute("history", history);
        request.getRequestDispatcher("listLike.jsp").forward(request, response);
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