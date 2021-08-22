package controller;

import dao.TaiKhoanDao;
import model.TaiKhoan;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/dangnhap")
public class DangNhapController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	TaiKhoan taiKhoan = null;
    TaiKhoanDao taiKhoanDao = new TaiKhoanDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Use case: Đăng nhập.
        //B2. Hệ thống gọi phương thức trả về trang đăng nhập.
        traVeTrangDangNhap(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Use case: Đăng nhập.
        // B3.1.1: Hệ thống lấy thông tin người dùng vừa nhập
        taiKhoan = layThongTinDangNhap(request);
        request.setAttribute("tenDangNhap", taiKhoan.getTenDangNhap());


        //Use case: Đăng nhập
        // B3.1.2: Hệ thống kiểm tra thông tin đăng nhập có trùng khớp với thông tin đã đăng ký hay không
        // --Nếu không đúng thì sẽ hiển thị thông báo "Tên đăng nhập hoặc mật khẩu không đúng"
        taiKhoan = kiemTraThongTinDangNhap(taiKhoan);
        if(taiKhoan == null) {
            traVeThongBao("Tên đăng nhập hoặc mật khẩu không đúng", request, response);
        }
        // --Nếu đúng thì Hệ thống hiển thị thông tin đăng nhập và duy trì trạng thái đăng nhập
        if(taiKhoan != null) {
            HttpSession session = request.getSession();
            session.setAttribute("Auth", taiKhoan);
            //B3.1.3: Hệ thống kiểm tra quyền truy cập của tài khoản
            if(kiemTraQuyenDangNhap(taiKhoan).equals("ADMIN")) {
            	//-- Nếu là ADMIN sẽ trả về giao diện trang quản trị
            	traVeTrangQuanTri(request, response);
            } else if(kiemTraQuyenDangNhap(taiKhoan).equals("USER")){
            	//-- Nếu là USER sẽ trả về giao diện trang chủ
            	traVeTrangChu(request, response);
            }
        }
    }

    private void traVeTrangDangNhap(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/sign.jsp");
        rd.forward(request, response);
    }
    
    private void traVeTrangChu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.sendRedirect(request.getContextPath()+"/trangchu");
    }
    
    private void traVeTrangQuanTri(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin.jsp");
        rd.forward(request, response);
    }

    private TaiKhoan layThongTinDangNhap(HttpServletRequest request) {
        TaiKhoan tk = new TaiKhoan();
        tk.setTenDangNhap(request.getParameter("uname"));
        tk.setMatKhau(request.getParameter("pwd"));
        return tk;
    }

    private TaiKhoan kiemTraThongTinDangNhap(TaiKhoan taiKhoan){
        if(taiKhoan.getMatKhau() == null || taiKhoan.getTenDangNhap() == null) return  null;
     return taiKhoanDao.layTaiKhoanTrongDB(taiKhoan.getTenDangNhap(), taiKhoan.getMatKhau());
    }

    private void traVeThongBao(String noiDung, HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        request.setAttribute("message", noiDung);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/sign.jsp");
        rd.forward(request, response);
    }
    
    private String kiemTraQuyenDangNhap(TaiKhoan taiKhoan) {
    	if(taiKhoan.getQuyenTruyCap() == 1) return "ADMIN";
    	return "USER";
    }

}
