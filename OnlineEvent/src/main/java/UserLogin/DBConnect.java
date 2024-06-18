package UserLogin;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;

	public class DBConnect {


		private static String url = "jdbc:mysql://localhost:3306/events";
		private static String username = "root";
		private static String password = "sjanisha#TV1914";
		private static Connection con;
		
				
		public static Connection getConnection() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url, username, password);
				
			}
			catch(Exception e) {
				System.out.println("DB connection is not success.");
			}
			return con;
		}

		public static void close(PreparedStatement stmt, Connection conn) {
	        if (stmt != null) {
	            try {
	                stmt.close();
	            } catch (SQLException e) {
	                // Handle any exceptions or log them
	                e.printStackTrace();
	            }
	        }
	        
	        if (conn != null) {
	            try {
	                conn.close();
	            } catch (SQLException e) {
	                // Handle any exceptions or log them
	                e.printStackTrace();
	            }
	        }
	    }
	}



