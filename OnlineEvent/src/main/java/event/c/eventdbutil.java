package event.c;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class eventdbutil {

	private static boolean isSuccess;
	private static Connection con =null; 
	private static Statement stmt =null; 
	private static ResultSet rs =null; 
	
	public static List<Event> display(){
		
		ArrayList <Event> cus = new ArrayList<>();
		try {
			con = eventDBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from details";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				
				int Id = rs.getInt(1);
				String name = rs.getString(2);
				String Description = rs.getString(3);
				String Price_range = rs.getString(4);
				String Contact = rs.getString(5);
				String Availability = rs.getString(6);
		
				Event c = new Event( Id , name, Description, Price_range, Contact, Availability);
				cus.add(c);
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return cus;
	}
	
	public static boolean insertevent(String name, String description,String price_range, String contact,String availability) {
		boolean isSuccess = false;
		try {

			con = eventDBconnect.getConnection();
			stmt = con.createStatement();
			String sql ="insert into details values (0, '"+name+"', '"+description+"', '"+price_range+"' , '"+contact+"','"+availability+"')";
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
	


public static Boolean updateevent(int id, String name, String description , String price_range, String contact ,String availability) {
	boolean isSuccess = false;

	try {

		con = eventDBconnect.getConnection();
		stmt = con.createStatement();
		String sql ="update details set Name='"+name+"', Description='"+description+"',Price_range='"+price_range+"' ,Contact='"+contact+"' ,Availability='"+availability+"' where Id ='"+id+"'";
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
public static List<Event> geteventDetails(int Id){
	ArrayList<Event> cus = new ArrayList<>();
	 
	int convertedCID = Id;
	
	try {
	
		con = eventDBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "SELECT * from details where Id = '"+convertedCID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String Description = rs.getString(3);
			String Price_range = rs.getString(4);
			String Contact = rs.getString(5);
			String Availability = rs.getString(6);
			
			Event c = new Event( id , name, Description, Price_range, Contact, Availability);
			cus.add(c);
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return cus;
}

public static boolean deleteEvent(int Id) {
	boolean isSuccess = false;
	int convertedID = Id;
	try {
		con = eventDBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from details where Id= '"+convertedID+"'";
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


