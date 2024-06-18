package Review;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdateReviewServlet")
public class UpdateReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//retrieve for update form
	@Override
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    try {
	    	int id = Integer.parseInt(request.getParameter("id"));
	    	
	    	//Establish a database connection
	    	  Connection conn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/events", "root", "sjanisha#TV1914");
	    	
	    	//Retreive data from database
	    	String sql = "SELECT * FROM Reviews WHERE ID = '"+id+"'";
	    	PreparedStatement pstmt = conn.prepareStatement(sql);
	    	
	    	
	    	ResultSet rs = pstmt.executeQuery();
	    	
	    	List<Review> reviewList = new ArrayList<>();
	    	
	    	
	    	if(rs.next()) {
	    		int id1 = rs.getInt(1);
	    		String Event = rs.getString(2);
	    		String ReviewTitle = rs.getString(3);
	    		String ClientName = rs.getString(4);
	    		String Phone = rs.getString(5);
	    		int Rating = rs.getInt(6);
	    		String R_content = rs.getString(7);
	    		String Further_contact = rs.getString(8);
	    		String CurrentDate = rs.getString(9);
	    		
	    		
	    		Review r = new Review(id1, Event, ReviewTitle, ClientName, Phone, Rating, R_content, Further_contact, CurrentDate);
	    		
	    		reviewList.add(r);
	    	}
	    	
	    	//Set the list as an attribute
	    	request.setAttribute("reviewsDetails", reviewList);
	    	
	    	//forward the request to the JSP
	    	request.getRequestDispatcher("updateReview.jsp").forward(request, response);
	    	conn.close();
	    	//Fetch the existing values from the database using RequestDAO or your preferred method
	  
	    	
	    	}
	    
	    catch (SQLException e) {
    		e.printStackTrace();
    		response.getWriter().write("SQL Error: " + e.getMessage());
    	} catch (IOException e) {
    		e.printStackTrace();
    		response.getWriter().write("IO Error: " + e.getMessage());
    
	    }
	}
	
	//updating the form
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));
	        String Event = request.getParameter("Event");
	        String ReviewTitle = request.getParameter("ReviewTitle");
	        String ClientName = request.getParameter("ClientName");
	        String Phone = request.getParameter("Phone");
	        String Rating = request.getParameter("Rating");
	        String R_content = request.getParameter("R_Content");
	        String Further_contact = request.getParameter("Further_Contact");
	        
	        
	        boolean isTrue;
	        
	        isTrue = ReviewDBUtil.updateReview(id, Event, ReviewTitle, ClientName, Phone, Rating, R_content, Further_contact);
	        if(isTrue == true) {
		        RequestDispatcher dis = request.getRequestDispatcher("/admindisplayServlet");
		        dis.forward(request, response);

	        }
	        else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
    }
}
