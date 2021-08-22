package controller;
import connection.ConnectionDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/trangchu")
public class TrangChuController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
//   gia soc cuoi tuan
			String sql3 = "SELECT id, img, price, pricea, des, name FROM sanpham WHERE type =2";
			PreparedStatement a2 = ConnectionDB.getPreparedStatement(sql3);
			ResultSet b2 = a2.executeQuery();
			request.setAttribute("b2", b2);
//   iphone
			String sql4 = "SELECT id, img, price, pricea, des, name FROM sanpham WHERE type =1";
			PreparedStatement a3 = ConnectionDB.getPreparedStatement(sql4);
			ResultSet b3 = a3.executeQuery();
			request.setAttribute("b3", b3);
//   samsung
			String sql5 = "SELECT id, img, price, pricea, des, name FROM sanpham WHERE type =2";
			PreparedStatement a4 = ConnectionDB.getPreparedStatement(sql5);
			ResultSet b4 = a4.executeQuery();
			request.setAttribute("b4", b4);

//   vsmart
			String sql6 = "SELECT id, img, price, pricea, des, name FROM sanpham WHERE type =3";
			PreparedStatement a5 = ConnectionDB.getPreparedStatement(sql6);
			ResultSet b5 = a5.executeQuery();
			request.setAttribute("b5", b5);


		request.getRequestDispatcher("trangchu.jsp").forward(request,response);

	} catch (ClassNotFoundException | SQLException  e) {
		e.printStackTrace();
	}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
