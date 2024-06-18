package UserLogin;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;

	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpSession;

	import Quotation.DBConnect;


	public class UserDBUtil {
		
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt =  null;
		private static ResultSet rs = null;

		
		public static boolean authenticateUser(HttpServletRequest request, String username, String password) {
		        Connection connection = null;
		        PreparedStatement preparedStatement = null;
		        ResultSet resultSet = null;

		        try {
		        	connection = DBConnect.getConnection(); // Replace with your database connection logic

		            // Prepare SQL query to fetch user information
		            String query = "SELECT UserName, Password, Role FROM admindata WHERE UserName = '"+username+"'and Password = '"+password+"'";
		            preparedStatement = connection.prepareStatement(query);
		            resultSet = preparedStatement.executeQuery();

		            if (resultSet.next()) {
		                String role = resultSet.getString("role");
		            
		            
			            if(true)
			            {
			            	HttpSession session = request.getSession();
		                    session.setAttribute("username", username);
		                    session.setAttribute("role", role);
		
		                    return true;
			            }
		            }
		            
		        } catch (SQLException e) {
		            e.printStackTrace();
		            // Handle database errors
		        } finally {
		            // Close resources
		            try {
		                if (resultSet != null) {
		                    resultSet.close();
		                }
		                if (preparedStatement != null) {
		                    preparedStatement.close();
		                }
		                if (connection != null) {
		                	connection.close();
		                }
		            } catch (SQLException e) {
		                e.printStackTrace();
		            }
		        }

		        return false; // Authentication failed
		    }

	}



