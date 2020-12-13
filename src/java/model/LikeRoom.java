/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author LongBody
 */
public class LikeRoom {
      private String email;
      private int idRoom;
      private String imageRoom;
      private int price;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }

    public String getImageRoom() {
        return imageRoom;
    }

    public void setImageRoom(String imageRoom) {
        this.imageRoom = imageRoom;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public LikeRoom() {
    }

    public LikeRoom(String email, int idRoom, String imageRoom, int price) {
        this.email = email;
        this.idRoom = idRoom;
        this.imageRoom = imageRoom;
        this.price = price;
    }

   

    
    
    


   
      
      

    
}
