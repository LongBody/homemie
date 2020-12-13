/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sound.midi.Soundbank;
import model.Booking;

/**
 *
 * @author LongBody
 */
public class BookingDao extends BaseDAO<Booking> {

    public void insertNewBooking(String email, int idRoom,String imageRoom, String dobBefore, String dobAfter, int quantity, int price) {
        try {
            String sql = "INSERT INTO bookingDetail"
                    + " VALUES(?,?,?,?, ? ,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setInt(2, idRoom);
            statement.setString(3, imageRoom);
            statement.setString(4, dobBefore);
            statement.setString(5, dobAfter);
            statement.setInt(6, quantity);
            statement.setInt(7, price);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public void cancelBooking(String id) {
        try {
            String sql = "DELETE FROM bookingDetail WHERE idBooking = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
       public ArrayList<Booking> getBookingHistory(String email) {
        ArrayList<Booking> Booking = new ArrayList<>();
        try {
            String sql = "select * from bookingDetail where email = '" + email + "'" ;
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Booking s = new Booking();
                s.setEmail(rs.getString("email"));
                s.setIdRoom(rs.getInt("idRoom"));
                s.setIdBooking(rs.getString("idBooking"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDobBefore(rs.getString("dobBefore"));
                s.setDobAfter(rs.getString("dobAfter"));
                s.setQuantity(rs.getInt("quantity"));
                s.setPrice(rs.getInt("price"));              
                Booking.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Booking;
    }
    
     public ArrayList<Booking> getBookingHistory() {
        ArrayList<Booking> Booking = new ArrayList<>();
        try {
            String sql = "select * from bookingDetail";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Booking s = new Booking();
                s.setEmail(rs.getString("email"));
                s.setIdRoom(rs.getInt("idRoom"));
                s.setIdBooking(rs.getString("idBooking"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDobBefore(rs.getString("dobBefore"));
                s.setDobAfter(rs.getString("dobAfter"));
                s.setQuantity(rs.getInt("quantity"));
                s.setPrice(rs.getInt("price"));              
                Booking.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Booking;
    }

    public static void main(String[] args) {
        BookingDao da = new BookingDao();
//        da.insertNewBooking("longnt1120@gmail.com", "Brand New Spacious", "https://cdn.luxstay.com/rooms/36947/large/30d8e9d5d97b3f25666a.jpg", "2/11/2020", "4/11/2020", 2, 630000);
//        System.out.println(da.getBookingHistory());
        da.cancelBooking("3");
    }

}
