package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
   private static final String URL = "jdbc:mysql://localhost:3306/jwebdb";
   private static final String USER = "javauser";
   private static final String PASSWORD = "pwjava";
	
	//DB 연결 메서드
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}


