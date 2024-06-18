package event.c;

import java.sql.Connection;
import java.sql.DriverManager;

public class eventDBconnect {

		private static String url = "jdbc:mysql://localhost:3306/events";
		private static String username = "root";
		private static String password = "sjanisha#TV1914";
		private static Connection con;
		
		public static Connection getConnection(){
		
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url,username ,password);
			}
			catch(Exception e) {
				System.out.print("Database connection is not success.....");
				
			}
				return con;
			}
	}

	
	

