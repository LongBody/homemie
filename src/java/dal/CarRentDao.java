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
import model.CarRent;
import model.Room;

/**
 *
 * @author LongBody
 */
public class CarRentDao extends BaseDAO<CarRent> {

    public void insertCarRent(String email, String dobBefore, String dobAfter, int quantity, int price) {
        try {
            String sql = "INSERT INTO carRent"
                    + " VALUES(?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, dobBefore);
            statement.setString(3, dobAfter);
            statement.setInt(4, quantity);
            statement.setInt(5, price);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     public ArrayList<CarRent> getCarList() {
        ArrayList<CarRent> Cars = new ArrayList<>();
        try {
            String sql = "select * from carRent";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                CarRent s = new CarRent();
                s.setEmail(rs.getString("email"));
                s.setIdBooking(rs.getString("idBooking"));
                s.setDobBefore(rs.getString("dobBefore"));
                s.setDobAfter(rs.getString("dobAfter"));
                s.setQuantity(rs.getInt("quantity"));
                s.setPrice(rs.getInt("price"));
                Cars.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Cars;
    }

    public ArrayList<CarRent> getCarByEmail(String email) {
        ArrayList<CarRent> Cars = new ArrayList<>();
        try {
            String sql = "select * from carRent where email = ? ";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                CarRent s = new CarRent();
                s.setEmail(rs.getString("email"));
                s.setIdBooking(rs.getString("idBooking"));
                s.setDobBefore(rs.getString("dobBefore"));
                s.setDobAfter(rs.getString("dobAfter"));
                s.setQuantity(rs.getInt("quantity"));
                s.setPrice(rs.getInt("price"));
                Cars.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Cars;
    }

    public void cancelBooking(String id) {
        try {
            String sql = "DELETE FROM carRent WHERE idBooking = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//       public static void main(String[] args) {
//        CarRentDao da = new CarRentDao();
//        da.insertCarRent("longnt1120@gmail.com", "ok", "ok", 2, 1399999);
//
//    }
}
