package com.Dao;
//use of creating different class for connection is if in future if we use another database then it will be easier to change
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {
	private static final String driver = "oracle.jdbc.OracleDriver";
	private static final  String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String uname = "system";
	private static final String pass="123456789";
	
	public static Connection getConnection() {
		
		Connection con = null;
		try {
			Class.forName(driver);//load driver
			con = DriverManager.getConnection(url,uname,pass);
		} catch (SQLException e) {
			e.printStackTrace();
		}//connection to database
         catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		System.out.println("Connection : "+con);
		 return con;
	 }
}
