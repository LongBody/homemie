/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.LikeRoom;
import model.Place;
import model.Room;

/**
 *
 * @author LongBody
 */
public class PlaceDAO extends BaseDAO<Place> {

    public ArrayList<Place> getPlaces() {
        ArrayList<Place> Places = new ArrayList<>();
        try {
            String sql = "select * from place ";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Place s = new Place();
                s.setName(rs.getString("name"));
                s.setImageLink(rs.getString("imageLink"));
                Places.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Places;
    }

    public ArrayList<Room> getRooms() {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "select * from room where isExist = 1 and isActive = 1";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Room s = new Room();
                s.setId(rs.getInt("id"));
                s.setRoomName(rs.getString("roomName"));
                s.setName(rs.getString("name"));
                s.setDetailImageRoom1(rs.getString("detailImageRoom1"));
                s.setDetailImageRoom2(rs.getString("detailImageRoom2"));
                s.setDetailImageRoom3(rs.getString("detailImageRoom3"));
                s.setPrice(rs.getInt("price"));
                s.setStar(rs.getInt("star"));
                s.setQuantityBed(rs.getInt("quantityBed"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDescription(rs.getString("descriptions"));
                s.setIsLike(rs.getBoolean("isLike"));
                s.setIsActive(rs.getBoolean("isActive"));
                s.setIsExist(rs.getBoolean("isExist"));
                System.out.println(s);
                Rooms.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Rooms;
    }

    public Room getRoomById(int id) {
        try {
            String sql = "select * from room where isExist = 1 and isActive = 1 and id = " + id;
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            Room s = new Room();
            while (rs.next()) {
                s.setId(rs.getInt("id"));
                s.setRoomName(rs.getString("roomName"));
                s.setName(rs.getString("name"));
                s.setDetailImageRoom1(rs.getString("detailImageRoom1"));
                s.setDetailImageRoom2(rs.getString("detailImageRoom2"));
                s.setDetailImageRoom3(rs.getString("detailImageRoom3"));
                s.setPrice(rs.getInt("price"));
                s.setStar(rs.getInt("star"));
                s.setQuantityBed(rs.getInt("quantityBed"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDescription(rs.getString("descriptions"));
                s.setIsLike(rs.getBoolean("isLike"));
                s.setIsActive(rs.getBoolean("isActive"));
                s.setIsExist(rs.getBoolean("isExist"));
                System.out.println(s);
            }
            return s;

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<LikeRoom> getLikeRoomsByEmail(String email) {
        ArrayList<LikeRoom> Rooms = new ArrayList<>();
        try {
            String sql = "Select * from likeList where  email = '" + email + "'";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                LikeRoom s = new LikeRoom();
                s.setEmail(rs.getString("email"));
                s.setIdRoom(rs.getInt("idRoom"));
                Rooms.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Rooms;
    }

    public void removeLikeRoomsByEmailAndIdRoom(String email, int idRoom) {
        try {
            String sql = "DELETE from likeList where email = '" + email + "' and idRoom = '" + idRoom + "'";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertLikeRoomsByEmailAndIdRoom(String email, int idRoom) {
        try {
            String sql = "INSERT INTO likeList"
                    + " VALUES(?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setInt(2, idRoom);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Room> getRoomsPagination(int page) {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "select * from room where isExist = 1 and isActive = 1 order by roomName  OFFSET ? ROWS FETCH NEXT 12 ROWS ONLY;";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, page);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Room s = new Room();
                s.setId(rs.getInt("id"));
                s.setRoomName(rs.getString("roomName"));
                s.setName(rs.getString("name"));
                s.setDetailImageRoom1(rs.getString("detailImageRoom1"));
                s.setDetailImageRoom2(rs.getString("detailImageRoom2"));
                s.setDetailImageRoom3(rs.getString("detailImageRoom3"));
                s.setPrice(rs.getInt("price"));
                s.setStar(rs.getInt("star"));
                s.setQuantityBed(rs.getInt("quantityBed"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDescription(rs.getString("descriptions"));
                s.setIsLike(rs.getBoolean("isLike"));
                s.setIsActive(rs.getBoolean("isActive"));
                s.setIsExist(rs.getBoolean("isExist"));
                System.out.println(s);
                Rooms.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Rooms;
    }

    public int getCountRooms() {
        int countPage = 0;
        try {

            String sql = "SELECT COUNT(roomName) as total FROM room where isActive =1 and isExist =1";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                System.out.println();
                countPage = rs.getInt("total");
            }           
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return countPage;
    }

    public ArrayList<Room> getRoomsSort(String sort, int page) {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "select * from room where isExist = 1 and isActive = 1  order by price " + sort + ",roomName  OFFSET " + page + " ROWS FETCH NEXT 12 ROWS ONLY";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Room s = new Room();
                s.setId(rs.getInt("id"));
                s.setRoomName(rs.getString("roomName"));
                s.setName(rs.getString("name"));
                s.setDetailImageRoom1(rs.getString("detailImageRoom1"));
                s.setDetailImageRoom2(rs.getString("detailImageRoom2"));
                s.setDetailImageRoom3(rs.getString("detailImageRoom3"));
                s.setPrice(rs.getInt("price"));
                s.setStar(rs.getInt("star"));
                s.setQuantityBed(rs.getInt("quantityBed"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDescription(rs.getString("descriptions"));
                s.setIsLike(rs.getBoolean("isLike"));
                s.setIsActive(rs.getBoolean("isActive"));
                s.setIsExist(rs.getBoolean("isExist"));
                System.out.println(s);
                Rooms.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Rooms;
    }

    public ArrayList<Room> getRoomByPlace(String place) {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "select * from room where name = ? and isExist = 1 and isActive= 1";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            statement.setString(1, place);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Room s = new Room();
                s.setId(rs.getInt("id"));
                s.setRoomName(rs.getString("roomName"));
                s.setName(rs.getString("name"));
                s.setDetailImageRoom1(rs.getString("detailImageRoom1"));
                s.setDetailImageRoom2(rs.getString("detailImageRoom2"));
                s.setDetailImageRoom3(rs.getString("detailImageRoom3"));
                s.setPrice(rs.getInt("price"));
                s.setStar(rs.getInt("star"));
                s.setQuantityBed(rs.getInt("quantityBed"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDescription(rs.getString("descriptions"));
                s.setIsLike(rs.getBoolean("isLike"));
                s.setIsActive(rs.getBoolean("isActive"));
                s.setIsExist(rs.getBoolean("isExist"));
                System.out.println(s);
                Rooms.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Rooms;
    }

    public ArrayList<Room> searchRooms(String place) {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "Select * from room where isExist = 1 and isActive = 1  and roomName like N'%" + place
                    + "%' or name like N'%" + place + "%' and isExist = 1 and isActive = 1 "
                    + "or searchName like '%" + place + "%' and isExist = 1 and isActive = 1";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Room s = new Room();
                s.setId(rs.getInt("id"));
                s.setRoomName(rs.getString("roomName"));
                s.setName(rs.getString("name"));
                s.setDetailImageRoom1(rs.getString("detailImageRoom1"));
                s.setDetailImageRoom2(rs.getString("detailImageRoom2"));
                s.setDetailImageRoom3(rs.getString("detailImageRoom3"));
                s.setPrice(rs.getInt("price"));
                s.setStar(rs.getInt("star"));
                s.setQuantityBed(rs.getInt("quantityBed"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDescription(rs.getString("descriptions"));
                s.setIsLike(rs.getBoolean("isLike"));
                s.setIsActive(rs.getBoolean("isActive"));
                s.setIsExist(rs.getBoolean("isExist"));
                System.out.println(s);
                Rooms.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Rooms;
    }

    public Room getDetailRoom(int id) {
        ArrayList<Room> Rooms = new ArrayList<>();
        Room s = new Room();
        try {
            String sql = "select * from room where id = ? and isExist = 1 and isActive = 1 ";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);

            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {

                s.setId(rs.getInt("id"));
                s.setRoomName(rs.getString("roomName"));
                s.setName(rs.getString("name"));
                s.setDetailImageRoom1(rs.getString("detailImageRoom1"));
                s.setDetailImageRoom2(rs.getString("detailImageRoom2"));
                s.setDetailImageRoom3(rs.getString("detailImageRoom3"));
                s.setPrice(rs.getInt("price"));
                s.setStar(rs.getInt("star"));
                s.setQuantityBed(rs.getInt("quantityBed"));
                s.setImageRoom(rs.getString("imageRoom"));
                s.setDescription(rs.getString("descriptions"));
                s.setIsLike(rs.getBoolean("isLike"));
                s.setIsActive(rs.getBoolean("isActive"));
                s.setIsExist(rs.getBoolean("isExist"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public static void main(String[] args) {
        PlaceDAO dal = new PlaceDAO();
//        dal.removeLikeRoomsByEmailAndIdRoom("longnt1120@gmail.com", "Daisy room");
        System.out.println(dal.getCountRooms());

    }

}
