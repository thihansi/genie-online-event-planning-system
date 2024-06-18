package Review;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class ReviewDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt =  null;
	private static ResultSet rs = null;
	
	public static boolean insertReview(String Event, String ReviewTitle, String ClientName, String phone, String Rating, String R_Content, String Further_Contact ) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into Reviews values (0, '"+Event+"', '"+ReviewTitle+"', '"+ClientName+"', '"+phone+"', '"+Rating+"', '"+R_Content+"', '"+Further_Contact+"', curDate())";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	//---------------------------------------------

	
	public static List<Review> display(){
			
	    	ArrayList<Review> reviews = new ArrayList<>();
				
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from reviews";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
		            String event = rs.getString(2);
		            String reviewTitle = rs.getString(3);
		            String clientName = rs.getString(4);
		            String phone = rs.getString(5);
		            int rating = rs.getInt(6);
		            String r_Content = rs.getString(7);
		            String further_contact = rs.getString(8);
		            String current_Date = rs.getString(9);
	
		            Review r = new Review(id, event, reviewTitle, clientName, phone, rating, r_Content, further_contact, current_Date);
		            reviews.add(r);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return reviews;
			
		}
	
	
    //--------------------------------------------

	
	public static boolean updateReview(int id, String Event, String ReviewTitle, String ClientName, String Phone, String Rating, String R_Content, String Further_Contact) {
	    boolean isSuccess = false;

	
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "update reviews set Event = '"+Event+"', ReviewTitle = '"+ReviewTitle+"', ClientName = '"+ClientName+"', Phone='"+Phone+"', Rating='"+Rating+"', R_Content='"+R_Content+"', Further_Contact='"+Further_Contact+"', currentDate=curDate() where ID = '"+id+"'";
	        
	        int rs = stmt.executeUpdate(sql);
	        
	        if (rs > 0) {
	        	isSuccess = true;
	        }
	        else {
	        	isSuccess = false;
	        }
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle exceptions as needed (e.g., log the error or throw a custom exception)
	    } 
	
	    return isSuccess;
	}


	//-------------------------------
	public static Review getReviewById(int id) {
	    Connection connection = null;
	    //--------
	    java.sql.PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;
	    Review review = null;

	    try {
	    	//establish database connection
	        con = DBConnect.getConnection();
	        //prepare SQL query to retrieve the review by ID
	        String query = "SELECT * FROM reviews WHERE ID = '"+id+"'";
	        preparedStatement = con.prepareStatement(query);
	        preparedStatement.setInt(1, id);
	        
	        //execute  the query
	        resultSet = preparedStatement.executeQuery();

	        	if (resultSet.next()) {
	        		System.out.println("Dats found in ResultSet");
	        	    review = new Review();
	        	    
	        	    review.setId(resultSet.getInt(1));
	        	    review.setEvent(resultSet.getString(2));
	        	    review.setReviewTitle(resultSet.getString(3));
	        	    review.setClientName(resultSet.getString(4));
	        	    review.setPhone(resultSet.getString(5));
	        	    review.setRating(resultSet.getInt(6));
	        	    review.setR_Content(resultSet.getString(7));
	        	    review.setFurther_Contact(resultSet.getString(8));
	        	    review.setCurrentDate(resultSet.getString(9));
	        	}
	 
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle the exception (e.g., log the error or throw a custom exception)
	    } finally {
	        try {
	            if (resultSet != null) {
	                resultSet.close();
	            }
	            if (preparedStatement != null) {
	                preparedStatement.close();
	            }
	            if (con != null) {
	                con.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Handle the exception
	        }
	    }

	    return review;
	    
	} 
	
	
	
	
	//---------------------------------
	
	
	
	public static boolean deleteEvent(int Id) {
		boolean isSuccess = false;
		int convertedID = Id;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from reviews where Id= '"+convertedID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;	
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	}
	   

	
	
	
	
	
	
	
	
	
	
	
	

