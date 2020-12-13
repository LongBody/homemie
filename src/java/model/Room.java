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
public class Room {
    private int id;
    private String name;
    private String roomName;
    private String detailImageRoom1;
    private String detailImageRoom2;
    private String detailImageRoom3;

    private int price;
    private int star;
    private int quantityBed;
    private String imageRoom;
    private String description;
    
    private boolean isLike ;
    private boolean isActive ;
    private boolean isExist ;

    public Room() {
    }

    public Room(int id, String name, String roomName, String detailImageRoom1, String detailImageRoom2, String detailImageRoom3, int price, int star, int quantityBed, String imageRoom, String description, boolean isLike, boolean isActive, boolean isExist) {
        this.id = id;
        this.name = name;
        this.roomName = roomName;
        this.detailImageRoom1 = detailImageRoom1;
        this.detailImageRoom2 = detailImageRoom2;
        this.detailImageRoom3 = detailImageRoom3;
        this.price = price;
        this.star = star;
        this.quantityBed = quantityBed;
        this.imageRoom = imageRoom;
        this.description = description;
        this.isLike = isLike;
        this.isActive = isActive;
        this.isExist = isExist;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getDetailImageRoom1() {
        return detailImageRoom1;
    }

    public void setDetailImageRoom1(String detailImageRoom1) {
        this.detailImageRoom1 = detailImageRoom1;
    }

    public String getDetailImageRoom2() {
        return detailImageRoom2;
    }

    public void setDetailImageRoom2(String detailImageRoom2) {
        this.detailImageRoom2 = detailImageRoom2;
    }

    public String getDetailImageRoom3() {
        return detailImageRoom3;
    }

    public void setDetailImageRoom3(String detailImageRoom3) {
        this.detailImageRoom3 = detailImageRoom3;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public int getQuantityBed() {
        return quantityBed;
    }

    public void setQuantityBed(int quantityBed) {
        this.quantityBed = quantityBed;
    }

    public String getImageRoom() {
        return imageRoom;
    }

    public void setImageRoom(String imageRoom) {
        this.imageRoom = imageRoom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isIsLike() {
        return isLike;
    }

    public void setIsLike(boolean isLike) {
        this.isLike = isLike;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public boolean isIsExist() {
        return isExist;
    }

    public void setIsExist(boolean isExist) {
        this.isExist = isExist;
    }
    
    

    

    
    

}
