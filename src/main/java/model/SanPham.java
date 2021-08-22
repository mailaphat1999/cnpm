package model;

import connection.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SanPham {
    private int id;
    private String name;
    int quantity;
    int price;
    private String img;

    public SanPham() {

    }
    public SanPham(int id, String name, int quantity, int price) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
    }

    public static SanPham find(int id){
        try{
            PreparedStatement ps = ConnectionDB.getPreparedStatement("SELECT id , name,price,img FROM sanpham WHERE id=? AND active=1");
            ps.setInt(1,id);
            ResultSet rs =ps.executeQuery();
            if (rs.next()){
                SanPham p=new SanPham();
                p.id=rs.getInt(1);
                p.name=rs.getString(2);
                p.price=rs.getInt(3);
                p.img=rs.getString(4);
                p.quantity=1;
                return p;
            }
            return null;
        } catch (SQLException|NumberFormatException e) {
            return null;
        } catch (Exception e) {
            return null;
        }
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        if (quantity<1) quantity=1;
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }



    public void quantityUp() {this.quantity++;}

    public void quantityUp(int quantity){setQuantity(quantity);}

    public int total(){
        return price*quantity;
    }

}
