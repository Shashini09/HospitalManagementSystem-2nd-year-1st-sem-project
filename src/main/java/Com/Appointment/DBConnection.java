package Com.Appointment;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url = "jdbc:mysql://localhost:3306/onlinehospital";
    private static String user="root";
	private static String pwd="shash@11";
	private static Connection con;
	
	public static Connection getconnection()
	{
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pwd);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}


}
