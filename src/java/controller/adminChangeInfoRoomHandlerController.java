/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Booking;
import model.Room;

/**
 *
 * @author LongBody
 */
public class adminChangeInfoRoomHandlerController extends HttpServlet {

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
            out.println("<title>Servlet adminChangeInfoRoomHandlerController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adminChangeInfoRoomHandlerController at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        String idGet = request.getParameter("id");
        String imageRoom = request.getParameter("imageRoom");
        String roomName = request.getParameter("roomName");
        String starGet = request.getParameter("star");
        String priceGet = request.getParameter("price");
        String place = request.getParameter("place");
        String quantityBedGet = request.getParameter("quantityBed");
        String descriptions = request.getParameter("descriptions");
        String detailImageRoom1 = request.getParameter("detailImageRoom1");
        String detailImageRoom2 = request.getParameter("detailImageRoom2");
        String detailImageRoom3 = request.getParameter("detailImageRoom3");

        int id = Integer.parseInt(idGet);
        int star = Integer.parseInt(starGet);
        int price = Integer.parseInt(priceGet);
        int quantityBed = Integer.parseInt(quantityBedGet);

//        out.print(id + imageRoom + roomName + star + price + quantityBed + descriptions + detailImageRoom1 + detailImageRoom2 + detailImageRoom3);
        AdminDAO dao = new AdminDAO();
        dao.updateRoomInfo(id, imageRoom, roomName, place, price, quantityBed, star, descriptions, detailImageRoom1, detailImageRoom2, detailImageRoom3);
        ArrayList<Room> rooms = dao.getRooms();
        request.setAttribute("rooms", rooms);
        request.getRequestDispatcher("adminListHomestay.jsp").forward(request, response);
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
