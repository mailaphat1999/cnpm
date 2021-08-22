package model;


import java.util.Collection;
import java.util.HashMap;

public class GioHang {

    HashMap<Integer, SanPham> data;
    public GioHang(){
        this.data = new HashMap<>();
    }

    public SanPham get(int id ){
        return data.get(id);
    }

    public int put(SanPham item) {
        if (data.containsKey(item.getId()))
            data.get(item.getId()).getQuantity();
        else data.put(item.getId(),item);
        return data.get(item.getId()).getQuantity();
    }
    public int put(int id, int quantity) {
        if (data.containsKey(id)) data.get(id).quantityUp(quantity);
        return data.get(id).getQuantity();
    }
    // xoa sp
    public boolean remove(int id){return data.remove(id)==null;}
	//tinh tong tien
    public int total(){
        int sum=0;
        for (SanPham p :data.values())
            sum += (p.quantity*p.price);
        return sum;
    }
    public Collection<SanPham> list(){
        return data.values();
    }
}
