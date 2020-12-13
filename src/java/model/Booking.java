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
public class Booking {
    private String email;
    private int idRoom;
    private String idBooking;
    private String imageRoom;
    private String dobBefore; 
    private String dobAfter;
    private int quantity;
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

    public String getIdBooking() {
        return idBooking;
    }

    public void setIdBooking(String idBooking) {
        this.idBooking = idBooking;
    }

    public String getImageRoom() {
        return imageRoom;
    }

    public void setImageRoom(String imageRoom) {
        this.imageRoom = imageRoom;
    }

    public String getDobBefore() {
        return dobBefore;
    }

    public void setDobBefore(String dobBefore) {
        this.dobBefore = dobBefore;
    }

    public String getDobAfter() {
        return dobAfter;
    }

    public void setDobAfter(String dobAfter) {
        this.dobAfter = dobAfter;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Booking() {
    }

    public Booking(String email, int idRoom, String idBooking, String imageRoom, String dobBefore, String dobAfter, int quantity, int price) {
        this.email = email;
        this.idRoom = idRoom;
        this.idBooking = idBooking;
        this.imageRoom = imageRoom;
        this.dobBefore = dobBefore;
        this.dobAfter = dobAfter;
        this.quantity = quantity;
        this.price = price;
    }

    

 
    
    
}
