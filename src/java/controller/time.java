/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LongBody
 */
public class time extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String s1 = "hello";
        String s2 = "/";
        String s3 = "meklo";
        String s4 = "hemlo";
        out.print(s2.compareTo("="));

// Random rd = new Random();
//        int id = rd.nextInt(100) + 1;
//        int n = (int) (Math.random() * (6 - 12 + 1) + 6);
//        String name = "MRABCD";
//        String gender = "male";
//        boolean g = rd.nextBoolean();
//        if (g == false) {
//            gender = "female";
//        }
//        String AB = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
//
//        SecureRandom rnd = new SecureRandom();
//
//        StringBuilder sb = new StringBuilder(7);
//        for (int i = 0; i < 7; i++) {
//            sb.append(AB.charAt(rnd.nextInt(AB.length())));
//        }
//        out.println(sb.toString());
//
//        String sDate1 = "01/01/1997";
//        String sDate2 = "31/12/1997";
//        DateFormat dateFormat = new SimpleDateFormat("dd/MM/YYYY");
//        Date endDate = new SimpleDateFormat("dd/MM/yyyy").parse(sDate2);
//        Date startDate = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
//        Date randomDate = new Date(ThreadLocalRandom.current().nextLong(startDate.getTime(), endDate.getTime()));
//        out.println(dateFormat.format(randomDate));
//        out.println(Character.isDigit('r'));
        // +1 neu lay tu 1 - 5 , khong  + 1 lay tu 1-4
//        int n = (int) (Math.random() * (5- 1 + 1) + 1);
//0- 9
//        Random r = new Random();
//        int i= r.nextInt(10);
//        out.print(i);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(time.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(time.class.getName()).log(Level.SEVERE, null, ex);
        }
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
