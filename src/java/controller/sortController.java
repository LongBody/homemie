/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.PlaceDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Room;

/**
 *
 * @author LongBody
 */
public class sortController extends HttpServlet {

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
            out.println("<title>Servlet sortController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet sortController at " + request.getContextPath() + "</h1>");
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

        String selectedValue = request.getParameter("sort");
        PrintWriter out = response.getWriter();

        String[] key = selectedValue.split("/");
        String page = key[0];
        PlaceDAO dal = new PlaceDAO();
        int countPage = dal.getCountRooms();
        int pageSize = 12;
        int allPage;
        if (countPage % 12 == 0) {
            allPage = countPage / 12;
        } else {
            allPage = (countPage / 12) + 1;
        }
        int pageCurrent = 1;

        int currentPage;
        if (page == null) {
            currentPage = 0;
        } else {
            currentPage = Integer.parseInt(page);
            pageCurrent = currentPage;
            currentPage = (currentPage - 1) * pageSize;
        }

        ArrayList<Room> rooms = dal.getRoomsSort(key[1], currentPage);
        request.setAttribute("pageCurrent", pageCurrent + "");
        request.setAttribute("sort", key[1]);
        request.setAttribute("pageSize", allPage + "");
        request.setAttribute("rooms", rooms);
        request.getRequestDispatcher("placeHomestay.jsp").forward(request, response);
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
