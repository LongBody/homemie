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
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
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
public class handlerBookingController extends HttpServlet {

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
            out.println("<title>Servlet handlerBookingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet handlerBookingController at " + request.getContextPath() + "</h1>");
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
        int id= Integer.parseInt(idGet);
        String dateCheckIn = request.getParameter("date-checkIn");
        String dateCheckOut = request.getParameter("date-checkOut");
        PlaceDAO dal = new PlaceDAO();

        LocalDate lt = LocalDate.now();

        Room room = dal.getDetailRoom(id);
        if (dateCheckIn.equalsIgnoreCase("") || dateCheckOut.equals("")) {
            request.setAttribute("messError", "Vui lòng chọn ngày phù hợp");
            request.setAttribute("room", room);
            request.setAttribute("price", room.getPrice() + "");
            request.getRequestDispatcher("detailRoom.jsp").forward(request, response);
//            out.print("Vui lòng chọn ngày phù hợp");
        } else {
            LocalDate dateBefore = LocalDate.parse(dateCheckIn);
            LocalDate dateAfter = LocalDate.parse(dateCheckOut);
            long noOfDaysBetweenNow = ChronoUnit.DAYS.between(lt, dateBefore);
            long noOfDaysBetweenFuture = ChronoUnit.DAYS.between(lt, dateAfter);
            long noOfDaysBetween = ChronoUnit.DAYS.between(dateBefore, dateAfter);
            if (noOfDaysBetweenNow < 0 || noOfDaysBetween < 0) {
                request.setAttribute("messError", "Ngày cần phù hợp với hiện tại");
                request.setAttribute("room", room);
                request.setAttribute("price", room.getPrice() + "");
                request.getRequestDispatcher("detailRoom.jsp").forward(request, response);
            } else if (noOfDaysBetweenFuture == 0) {
                request.setAttribute("messError", "Số ngày đi ít nhất là 1");
                request.setAttribute("room", room);
                request.setAttribute("price", room.getPrice() + "");
                request.getRequestDispatcher("detailRoom.jsp").forward(request, response);
            } else {

                String dateBeforeConvert = dateBefore.getDayOfMonth() + "/" + dateBefore.getMonthValue() + "/" + dateBefore.getYear();
                String dateAfterConvert = dateAfter.getDayOfMonth() + "/" + dateAfter.getMonthValue() + "/" + dateAfter.getYear();
                int sum = (int) (room.getPrice() * noOfDaysBetween);
                String sumMoney = String.valueOf(sum);
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
                request.setAttribute("bookingRoom", room);
                request.setAttribute("totalprice", sum + "");
                request.setAttribute("dayBetween", noOfDaysBetween);
                request.setAttribute("sum", sumMoney);
                request.setAttribute("checkin", dateBeforeConvert);
                request.setAttribute("checkout", dateAfterConvert);
                request.getRequestDispatcher("bookingHandler.jsp").forward(request, response);
            }

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
