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
public class CarRent {
    private String email;
    private String idBooking;
    private String dobBefore; 
    private String dobAfter;
    private int quantity;
    private int price;

    public CarRent() {
    }

    public CarRent(String email, String idBooking, String dobBefore, String dobAfter, int quantity, int price) {
        this.email = email;
        this.idBooking = idBooking;
        this.dobBefore = dobBefore;
        this.dobAfter = dobAfter;
        this.quantity = quantity;
        this.price = price;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIdBooking() {
        return idBooking;
    }

    public void setIdBooking(String idBooking) {
        this.idBooking = idBooking;
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

    @Override
    public String toString() {
        return "CarRent{" + "email=" + email + ", idBooking=" + idBooking + ", dobBefore=" + dobBefore + ", dobAfter=" + dobAfter + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
    
    
}
