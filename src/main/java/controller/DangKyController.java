package controller;

import dao.TaiKhoanDao;
import model.TaiKhoan;
import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.HtmlEmail;
import utils.SystemContain;
import utils.Utils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Date;

@WebServlet("/dangky")
public class DangKyController extends HttpServlet {
    TaiKhoan taiKhoan = null;
    TaiKhoanDao taiKhoanDao = new TaiKhoanDao();
    String tacVu = null;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	
        tacVu = request.getParameter("tacVu");


        if (tacVu == null) {
            // Use case: Đăng ký.
            // B2. Hệ thống gọi phương thức trả về trang đăng ký.
            traVeTrangDangKy(request, response);
        } else if (tacVu != null && tacVu.equals("themTaiKhoan")) {

            taiKhoan = layThongTinDangKy(request);
            // Use case: Đăng ký.
            // B5. Nếu Người dùng đã click vào link xác nhận
            // Hệ thống sẽ lưu tài khoản vào database, chuyển đến trang đăng nhập.

           
            try {
            	if(taiKhoanDao.kiemTraTaiKhoan(taiKhoan.getTenDangNhap()) == false) {
            		 Date id = new Date();
                     taiKhoan = new TaiKhoan("" + id.getTime(),taiKhoan.getHoVaTen(), taiKhoan.getTenDangNhap(), taiKhoan.getEmail(),
                             taiKhoanDao.maHoaMD5(taiKhoan.getMatKhau()), 2, 1);
            		
            		taiKhoanDao.themTaiKhoan(taiKhoan);
            	}
			} catch (URISyntaxException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            response.sendRedirect(request.getContextPath() + "/dangnhap");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	
        tacVu = request.getParameter("tacVu");
        if (tacVu != null && tacVu.equals("xacThucMail")) {
            // Use case: Đăng ký.
            // B3: Hệ thống lấy thông tin người dùng vừa nhập,
            taiKhoan = layThongTinDangKy(request);
            // B4: Hệ thống kiểm tra thông tin đăng ký
            boolean ketQuaKiemTra = kiemTraThongTinDangKy(taiKhoan, request, response);
            if (ketQuaKiemTra == false) {
                /*
                 * B4.1. Nếu kiểm tra thông tin đăng ký là sai: hiển thị các thông báo sai tương
                 * ứng ở form (các trường rỗng, email sai định dạng, mật khẩu không đủ mạnh, mật
                 * khẩu nhập lại chưa đúng).
                 */
            } else {
                /* B4.2. Nếu kiểm tra thông tin đăng ký là đúng:
                    Hệ thống Gửi Email để người dùng xác thực
                 */
                guiMailXacThuc(taiKhoan);
                request.setAttribute("yeuCauXacThuc", "Bạn vui lòng đăng nhập vào Email để xác thực đăng ký tài khoản");

            }
            traVeTrangDangKy(request, response);
        }

    }

    // Phương thức trả về trang đăng ký:
    private void traVeTrangDangKy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/register.jsp");
        rd.forward(request, response);
    }

    // kiểm tra xem tài khoản đã tồn tại hay chưa, kiểm tra thông tin mà người dùng
    // nhập có đúng định dạng hay không.
    // Có 2 trường hợp:
    private TaiKhoan layThongTinDangKy(HttpServletRequest request) {
        TaiKhoan tk = new TaiKhoan();
        tk.setHoVaTen(request.getParameter("fullname"));
        tk.setTenDangNhap(request.getParameter("uname"));
        tk.setEmail(request.getParameter("uemail"));
        tk.setMatKhau(request.getParameter("pwd"));
        return tk;
    }

    private boolean kiemTraThongTinDangKy(TaiKhoan taiKhoan, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String fullname = taiKhoan.getHoVaTen();
        String name = taiKhoan.getTenDangNhap();
        String email = taiKhoan.getEmail();
        String password = taiKhoan.getMatKhau();
        String re_password = request.getParameter("pwd1");
        String regex_email = "^[A-Za-z0-9]+([_\\.\\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\\.\\-]?[A-Za-z0-9]+)*(\\.[A-Za-z]+)+$";
        String regex_password = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\\$%\\^&\\*]).{8,}$";
        String name_error = "";
        String fullname_error = "";
        String email_error = "";
        String password_error = "";
        String repass_error = "";

        if (fullname.equals("")) {
        	fullname_error = "✖ Vui lòng nhập họ tên!";
        }
        if (fullname_error.length() > 0) {
            request.setAttribute("hoten_error", fullname_error);
        }
        
        if (name.equals("")) {
            name_error = "✖ Vui lòng nhập tên đăng nhập!";
        } else if (taiKhoanDao.kiemTraTaiKhoan(name) == true) {
            name_error = "✖ Địa chỉ đã được đăng ký";
        }
        if (name_error.length() > 0) {
            request.setAttribute("name_error", name_error);
        }
        // Kiểm tra email:
        if (email.equals("")) {
            email_error = "✖ Vui lòng nhập email";
        } else if (taiKhoanDao.regexMatches(regex_email, email) == false) {
            email_error = "✖ Email sai định dạng";
        }
        if (email_error.length() > 0) {
            request.setAttribute("email_error", email_error);
        }
        // Kiểm tra mật khẩu:
        if (password.equals("")) {
            password_error = "✖ Vui lòng nhập mật khẩu";
        } else if (taiKhoanDao.regexMatches(regex_password, password) == false) {
            password_error = "✖ Mật khẩu không đủ mạnh";
        }
        if (password_error.length() > 0) {
            request.setAttribute("password_err", password_error);
        }
        // Kiểm tra người dùng nhập lại mật khẩu có đúng không:
        if (re_password.equals("")) {
            repass_error = "✖ Vui lòng xác nhận lại mật khẩu";
        } else if (!re_password.equals(password)) {
            repass_error = "✖ Mật khẩu nhập lại không đúng!";
        }
        if (repass_error.length() > 0) {
            request.setAttribute("repass_err", repass_error);
        }
        
        request.setAttribute("fullname", fullname);
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("password", password);
        request.setAttribute("repass", re_password);

        if (name_error.length() == 0 && email_error.length() == 0 && password_error.length() == 0
                && repass_error.length() == 0) {
            return true;
        } else {
            return false;
        }

    }

    private static void guiMailXacThuc(TaiKhoan taiKhoan) {

        try {
            // Tạo đối tượng Email
            HtmlEmail email = new HtmlEmail();

            // Cấu hình
            email.setHostName("smtp.googlemail.com");
            email.setSmtpPort(587);
            email.setAuthenticator(new DefaultAuthenticator(SystemContain.MY_EMAIL, SystemContain.MY_PASSWORD));
            email.setSSLOnConnect(true);
            email.setFrom(SystemContain.MY_EMAIL, "CNPM");

            // Người nhận
            email.addTo(taiKhoan.getEmail());

            // Tiêu đề
            email.setSubject("YÊU CẦU XÁC THỰC EMAIL");

            // Sét nội dung email định dạng HTML.
            StringBuffer content = new StringBuffer();
            content.append("<html><h4>Ban vui long click vao link sau de xac thuc dang ky tai khoan</h4>");
            String linkThemTK = Utils.fullPath("dangky?tacVu=themTaiKhoan&&fullname=" + taiKhoan.getHoVaTen()
                    + "&&uname=" + taiKhoan.getTenDangNhap() + "&&uemail=" + taiKhoan.getEmail() + "&&pwd="
                    + taiKhoan.getMatKhau());
            content.append("<a href='" + linkThemTK + "'>Kích Hoạt</a>");
            email.setHtmlMsg(content.toString());

            // Thiết lập các thông báo thay thế
            // (Trong trường hợp chương trình đọc mail của người nhận ko hỗ trợ đọc HTML
            // Email)
            email.setTextMsg("Your email client does not support HTML messages");

            // Gửi email
            email.send();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
