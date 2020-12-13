/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.sun.org.apache.xerces.internal.xs.XSObject;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sound.midi.Soundbank;
import model.AccountUser;
import model.Booking;
import model.LikeRoom;
import model.Place;
import model.Room;

/**
 *
 * @author LongBody
 */
public class AdminDAO extends BaseDAO<Place> {

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
            String sql = "select * from room";
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

    public ArrayList<Room> getRestoreRooms() {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "select * from room where isExist = 0";
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

    public AccountUser getAccountByEmail(String email) {
        try {
            String sql = "select * from account where email = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
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

    public ArrayList<LikeRoom> getLikeRoomsByEmail(String email) {
        ArrayList<LikeRoom> Rooms = new ArrayList<>();
        try {
            String sql = "Select * from likeList where isExist = 1 and isActive = 1 and email = '" + email + "'";
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

    public void removeLikeRoomsByEmailAndIdRoom(String email, String idRoom) {
        try {
            String sql = "DELETE from likeList where email = '" + email + "' and idRoom = '" + idRoom + "'";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);
            statement.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertLikeRoomsByEmailAndIdRoom(String email, String idRoom) {
        try {
            String sql = "INSERT INTO likeList"
                    + " VALUES(?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, idRoom);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<Room> getRoomsPagination(int page) {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "select * from room where isExist = 1 and isActive = 1 order by idRoomName  OFFSET ? ROWS FETCH NEXT 12 ROWS ONLY;";
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

    public ArrayList<Room> getRoomsSort(String sort, int page) {
        ArrayList<Room> Rooms = new ArrayList<>();
        try {
            String sql = "select * from room where isExist = 1 and isActive = 1  order by price " + sort + ",idRoomName  OFFSET " + page + " ROWS FETCH NEXT 12 ROWS ONLY";
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
            String sql = "select * from room where name = ? and isExist = 1  ";
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
            String sql = "Select * from room where isExist = 1 and isActive = 1 and idRoomName like N'%" + place
                    + "%' or name like N'%" + place + "%'"
                    + "or searchName like '%" + place + "%'";
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
                s.setIsExist(rs.getBoolean("isExit"));
                System.out.println(s);
                Rooms.add(s);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Rooms;
    }

    public Room getDetailRoom(String name) {
        ArrayList<Room> Rooms = new ArrayList<>();
        Room s = new Room();
        try {
            String sql = "select * from room where id = ? and isExist = 1 and isActive = 1 ";
            PreparedStatement statement = connection.prepareStatement(sql);
            System.out.println(sql);

            statement.setString(1, name);
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
                s.setIsExist(rs.getBoolean("isExit"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public void changeActiveRoom(String roomId) {
        try {
            String sql = "UPDATE room "
                    + "SET isActive = 1 "
                    + "WHERE id = N'" + roomId + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void adminRestoreRoom(String roomId) {
        try {
            String sql = "UPDATE room "
                    + "SET isExist = 1 "
                    + "WHERE id = N'" + roomId + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void adminDeleteRoomToRestoreList(String roomId) {
        try {
            String sql = "UPDATE room "
                    + "SET isExist = 0 "
                    + "WHERE id = N'" + roomId + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void adminDeleteRoomFromTableLikeList(String roomId) {
        try {
            String sql = "DELETE FROM likeList "
                    + "WHERE idRoom = N'" + roomId + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void adminDeleteRoomFromDatabase(String roomId) {
        try {
            String sql = "DELETE FROM room "
                    + "WHERE id = N'" + roomId + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void changeLimitRoom(String roomId) {
        try {
            String sql = "UPDATE room "
                    + "SET isActive = 0 "
                    + "WHERE id = N'" + roomId + "'";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateRoomInfo(int id, String imageRoom, String roomName, String place, int price, int quantityBed, int star, String descriptions, String detailImageRoom1, String detailImageRoom2, String detailImageRoom3) {
        try {
            String sql = "UPDATE room "
                    + "SET imageRoom = '" + imageRoom
                    + "' , roomName = N'" + roomName
                    + "' , name = N'" + place
                    + "' , price = " + price
                    + " , quantityBed = " + quantityBed
                    + " , star = " + star
                    + " , descriptions = N'" + descriptions
                    + "' , detailImageRoom1 = '" + detailImageRoom1
                    + "' , detailImageRoom2 = '" + detailImageRoom2
                    + "' , detailImageRoom3= '" + detailImageRoom3
                    + "' WHERE id = " + id + "";
            System.out.println(sql);
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertNewRoom(String imageRoom, String roomName, String place, int price, int quantityBed, int star, String descriptions, String detailImageRoom1, String detailImageRoom2, String detailImageRoom3) {
        try {
            String sql = "INSERT INTO room "
                    + "VALUES( N'"+ roomName + "'"
                    + ",N'" + place + "',"
                    + "'-" +"','"
                    + detailImageRoom1 +"','"
                    + detailImageRoom2 +"','"
                    + detailImageRoom3 +"',"
                    + price +","
                    + star +"," 
                    +quantityBed +",'"
                    +imageRoom +"',"
                    +"N'" + descriptions + "',"
                    +0 +","
                    +1 +","
                    +1 + ")";
            PreparedStatement statement = connection.prepareStatement(sql);
//            statement.setString(2, "N'" + roomName + "'");
//            statement.setString(3, "N'" + place + "'");
//            statement.setString(4, "");
//            statement.setString(5, detailImageRoom1);
//            statement.setString(6, detailImageRoom2);
//            statement.setString(7, detailImageRoom3);
//            statement.setInt(8, price);
//            statement.setInt(9, star);
//            statement.setInt(10, quantityBed);
//            statement.setString(11, imageRoom);
//            statement.setString(12, "N'" + descriptions + "'");
//            statement.setBoolean(13, false);
//            statement.setBoolean(14, true);
//            statement.setBoolean(15, true);
            System.out.println(sql);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        AdminDAO dal = new AdminDAO();
        dal.insertNewRoom( "https://cdn.luxstay.com/rooms/31788/large/room_31788_10_1567696477.jpg", "Pura Vida house", "Hà Nội", 617000, 1, 4, "Ngay sát cạnh Nhà Hát Lớn và ĐSQ Ý, Pura Vida chỉ cách Hồ Hoàn Kiếm 700m và 500m tới khu vực phố cổ,thừa hưởng mọi lợi ích của khu tập thể cũ Bộ Thương Mại ", "https://cdn.luxstay.com/rooms/31788/large/room_31788_6_1567696398.jpg", "https://cdn.luxstay.com/rooms/31788/large/room_31788_1_1567696390.jpg", "https://cdn.luxstay.com/rooms/31788/large/room_31788_10_1567696477.jpg");
    }

}
