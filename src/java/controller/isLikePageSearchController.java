/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
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
import model.LikeRoom;
import model.Room;

/**
 *
 * @author LongBody
 */
public class isLikePageSearchController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet isLikePageSearchController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet isLikePageSearchController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String keyword = request.getParameter("keyword");
        PrintWriter out = response.getWriter();
        PlaceDAO dal = new PlaceDAO();
        
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
        String isLike = request.getParameter("isLike");
        String[] key = isLike.split("/");
          int id = Integer.parseInt(key[1]);
        if (account != null) {
            if (key[0].equals("true")) {
                dal.removeLikeRoomsByEmailAndIdRoom(account.getEmail(), id );
            } else {
                dal.insertLikeRoomsByEmailAndIdRoom(account.getEmail(), id );
            }
        }
        
        ArrayList<Room> rooms;
        if (keyword == null) {
            rooms = dal.searchRooms(key[2]);
            keyword = key[2];
 
        } else {
            rooms = dal.searchRooms(keyword);
            
        }

         if (account != null) {
            ArrayList<LikeRoom> likeRooms = dal.getLikeRoomsByEmail(account.getEmail());
            for (int counter = 0; counter < rooms.size(); counter++) {
                for (int i = 0; i < likeRooms.size(); i++) {
                    if (rooms.get(counter).getId() == likeRooms.get(i).getIdRoom()) {
                        rooms.get(counter).setIsLike(true);
                       
                    }
                }
            }
        }

//        if (rooms.isEmpty()) {
//            request.setAttribute("keyword", keyword);
//            request.setAttribute("notfound", "Không tin thấy khách sạn , địa điểm này");
//            request.getRequestDispatcher("place.jsp").forward(request, response);
//        } else {

        request.setAttribute("keyword", keyword);
        request.setAttribute("rooms", rooms);
       
        request.getRequestDispatcher("placeSearch.jsp").forward(request, response);
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
