package connection;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.commons.mail.Email;

public class ConnectionDB {
	static Connection con;

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/8mU9TlYrk5?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=utf-8", "8mU9TlYrk5", "EuO4UHu8KH");
            return con;
        } else {
            return con;
        }
    }
	public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException  {
		if (con==null||con.isClosed()) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/8mU9TlYrk5?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=utf-8", "8mU9TlYrk5", "EuO4UHu8KH");

		}
		return con.prepareStatement(sql);


	}

}

