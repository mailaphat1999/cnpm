package model;

public class TaiKhoan {
	String hoVaTen;
    public String getHoVaTen() {
		return hoVaTen;
	}

	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}

	String maTaiKhoan;
    String tenDangNhap;
    String email;
    String matKhau;
    int quyenTruyCap;
    int trangThai;

    public TaiKhoan() {
    }

    public TaiKhoan(String tenDangNhap, String email, String matKhau) {
        this.tenDangNhap = tenDangNhap;
        this.email = email;
        this.matKhau = matKhau;
    }

    public TaiKhoan(String maTaiKhoan, String hoVaTen, String tenDangNhap, String email, String matKhau, int quyenTruyCap, int trangThai) {
    	this.hoVaTen = hoVaTen;
        this.maTaiKhoan = maTaiKhoan;
        this.tenDangNhap = tenDangNhap;
        this.email = email;
        this.matKhau = matKhau;
        this.quyenTruyCap = quyenTruyCap;
        this.trangThai = trangThai;
    }

    public String getMaTaiKhoan() {
        return maTaiKhoan;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public String getEmail() {
        return email;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public int getQuyenTruyCap() {
        return quyenTruyCap;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setMaTaiKhoan(String maTaiKhoan) {
        this.maTaiKhoan = maTaiKhoan;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public void setQuyenTruyCap(int quyenTruyCap) {
        this.quyenTruyCap = quyenTruyCap;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }
}

