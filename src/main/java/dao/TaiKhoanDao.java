package dao;

import connection.ConnectionDB;
import model.TaiKhoan;

import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TaiKhoanDao {

    //Kiểm tra chuỗi hợp lệ:
    public static boolean regexMatches(String regex, String input) {
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(input);
        return matcher.matches();
    }

    //Mã hóa mật khẩu MD5:
    public static String maHoaMD5(String str) {
        byte[] defaultBytes = str.getBytes();
        try {
            MessageDigest algorithm = MessageDigest.getInstance("MD5");
            algorithm.reset();
            algorithm.update(defaultBytes);
            byte messageDigest[] = algorithm.digest();
            StringBuffer hexString = new StringBuffer();
            for (int i = 0; i < messageDigest.length; i++) {
                String hex = Integer.toHexString(0xFF & messageDigest[i]);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }
            str = hexString + "";
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return str;
    }

    //Kiem tra tai khoan nay da ton tai hay chua:
    public boolean kiemTraTaiKhoan(String userName) {
        String sql = "SELECT * FROM taikhoan WHERE tenDangNhap = '" + userName + "'";
        try {
            Connection cons = ConnectionDB.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    //Them tai khoan vao trong database:
    public void themTaiKhoan(TaiKhoan taiKhoan) throws URISyntaxException {
        String sql = "INSERT INTO taikhoan VALUES (?,?,?,?,?,?)";
        try {
            Connection conn = ConnectionDB.getConnection();
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, taiKhoan.getMaTaiKhoan());
            pst.setString(2, taiKhoan.getTenDangNhap());
            pst.setString(3, taiKhoan.getEmail());
            pst.setString(4, taiKhoan.getMatKhau());
            pst.setInt(5, taiKhoan.getQuyenTruyCap());
            pst.setInt(6, taiKhoan.getTrangThai());
            pst.executeUpdate();
           
        } catch (SQLException e) {
        	
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            Logger.getLogger(TaiKhoanDao.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
	public TaiKhoan layTaiKhoanTrongDB(String tenDangNhap, String matKhau) {
		TaiKhoan taiKhoan = null;
		matKhau = maHoaMD5(matKhau);
		String sql = "SELECT * FROM taikhoan WHERE tenDangNhap= '" + tenDangNhap + "' AND matKhau= '" +matKhau+"'";
		try {
			Connection cons = ConnectionDB.getConnection();
			PreparedStatement ps = cons.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				taiKhoan = new TaiKhoan();
				taiKhoan.setMaTaiKhoan(rs.getString(1));
				taiKhoan.setTenDangNhap(rs.getString(2));
				taiKhoan.setHoVaTen(rs.getString(2));
				taiKhoan.setEmail(rs.getString(3));
				taiKhoan.setQuyenTruyCap(rs.getInt(5));
			}
			cons.close();
		} catch (ClassNotFoundException | SQLException ex) {
			return null;
		}
		return taiKhoan;
	}
	
	 //Kiem tra tai khoan nay da ton tai id Facebook chua:
    public boolean kiemTraTaiKhoanTheoId(String id) {
        String sql = "SELECT * FROM taikhoan WHERE maTaiKhoan= '" + id + "'";
        try {
            Connection cons = ConnectionDB.getConnection();
            PreparedStatement ps = cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            cons.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TaiKhoanDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
