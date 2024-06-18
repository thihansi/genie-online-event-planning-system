package Quotation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class QuotationDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt =  null;
	private static ResultSet rs = null;
	
	//private static final String SELECT_QUOTATION_BY_ID = "SELECT * FROM quotations WHERE id = ?";
    //private static final String UPDATE_QUOTATION = "UPDATE quotations SET name = ?, phone = ?, email = ?, edate = ?, venue = ?, specialReq = ?, eType = ? WHERE id = ?";
	
	public static List<Quotation> displayAll(){
		ArrayList<Quotation> qut = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from quotation";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				int idC = rs.getInt(1);
                String nameC = rs.getString(2);
                String phoneC = rs.getString(3);
                String emailC = rs.getString(4);
                String dateC = rs.getString(5);
                String venueC = rs.getString(6);
                String sQC = rs.getString(7);
                String qdateC = rs.getString(8);
                String typeC = rs.getString(9);
				
				Quotation q = new Quotation(idC, nameC, phoneC, emailC, dateC, venueC, sQC, qdateC, typeC);
				qut.add(q);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		return qut;
	}
	
	public static boolean insertQuotation(String name, String phone, String email, String edate, String venue, String Sreq, String eType) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into eventplanner.quotation values (0, '"+name+"', '"+phone+"', '"+email+"', '"+edate+"', '"+venue+"', '"+Sreq+"', curdate(),  '"+eType+"' )";
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
	
	public static boolean updateQuotation(int id, String name, String phone, String email, String edate, String venue, String Sreq, String eType) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update quotation set ClientName='"+name+"', PhoneNumber='"+phone+"', Email='"+email+"', Date='"+edate+"', Venue='"+venue+"', SpecialReq='"+Sreq+"', Qdate =curdate(), EventType='"+eType+"' where QID='"+id+"'";
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

	public static Quotation getQuotationById(int id) {
	    Connection connection = null;
	    PreparedStatement preparedStatement = null;
	    ResultSet resultSet = null;
	    Quotation quotation = null;

	    try {
	        // Establish the database connection (configure the connection details as needed)
	        connection = DBConnect.getConnection();

	        // Prepare the SQL query to retrieve the quotation by ID
	        String query = "select * from quotation where QID='"+id+"'";
	        preparedStatement = connection.prepareStatement(query);
	        preparedStatement.setInt(1, id);

	        // Execute the query
	        resultSet = preparedStatement.executeQuery();

	        while (resultSet.next()) {
	            System.out.println("Data found in ResultSet");
	            // Retrieve the values from the ResultSet and create a Quotation object
	            quotation = new Quotation();
	            quotation.setQid(resultSet.getInt(1));
	            quotation.setClientName(resultSet.getString(2));
	            quotation.setPhone(resultSet.getString(3));
	            quotation.setEmail(resultSet.getString(4));
	            quotation.seteDate(resultSet.getString(5));
	            quotation.setVenue(resultSet.getString(6));
	            quotation.setSpecialReq(resultSet.getString(7));
	            quotation.setQdate(resultSet.getString(8));
	            quotation.setType(resultSet.getString(9));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle any database exceptions
	    } finally {
	        // Close the database resources
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

	    return quotation;
	}
	
	
	
	
	
	
	
	public static List<Quotation> display1(int id){
		ArrayList<Quotation> qut = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from quotation where QID='"+id+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				int idC = rs.getInt(1);
                String nameC = rs.getString(2);
                String phoneC = rs.getString(3);
                String emailC = rs.getString(4);
                String dateC = rs.getString(5);
                String venueC = rs.getString(6);
                String sQC = rs.getString(7);
                String qdateC = rs.getString(8);
                String typeC = rs.getString(9);
				
				Quotation q = new Quotation(idC, nameC, phoneC, emailC, dateC, venueC, sQC, qdateC, typeC);
				qut.add(q);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		return qut;
	}
	
	public static boolean deleteQuotation(int id) {
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from quotation where QID='"+id+"'";
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
	
	
	public static List<Quotation> display(){
		ArrayList<Quotation> qut = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM quotation ORDER BY QID DESC LIMIT 1;";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				int idC = rs.getInt(1);
                String nameC = rs.getString(2);
                String phoneC = rs.getString(3);
                String emailC = rs.getString(4);
                String dateC = rs.getString(5);
                String venueC = rs.getString(6);
                String sQC = rs.getString(7);
                String qdateC = rs.getString(8);
                String typeC = rs.getString(9);
				
				Quotation q = new Quotation(idC, nameC, phoneC, emailC, dateC, venueC, sQC, qdateC, typeC);
				qut.add(q);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
		return qut;
	}
}


