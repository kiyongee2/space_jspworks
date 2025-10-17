package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionTest {

	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/jwebdb";
		String user = "javauser";
		String password = "pwjava";
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println(conn + " DB 접속 성공!");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
