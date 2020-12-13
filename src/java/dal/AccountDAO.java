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
import model.AccountUser;

/**
 *
 * @author LongBody
 */
public class AccountDAO extends BaseDAO<AccountUser> {

    public AccountUser getAccountByUP(String email, String password) {
        try {
            String sql = "select * from account where email = ? and password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                AccountUser s = new AccountUser(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                return s;

            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<AccountUser> listAcc() {
        ArrayList acc = new ArrayList();

        try {
            String sql = "select * from account ";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                AccountUser s = new AccountUser(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                acc.add(s);

            }
            return acc;
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(String email, String name, String phone, String password) {
        String role = "user";
        try {
            String sql = "INSERT INTO account"
                    + " VALUES(?,?,?,? ,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, name);
            statement.setString(3, phone);
            statement.setString(4, password);
            statement.setString(5, role);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void changePassword(String email, String password) {
        try {
            String sql = "UPDATE account\n"
                    + "SET password = '" + password
                    + "'WHERE email = '" + email + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void changeInformations(String email, String name, String phone) {
        try {
            String sql = "UPDATE account\n"
                    + "SET name = N'" + name
                    + "', phone = '" + phone
                    + "'WHERE email = '" + email + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    

    public static void main(String[] args) {
        AccountDAO da = new AccountDAO();
        da.changeInformations("longnt1120@gmail.com", "long", "0344914282");
    }

}
