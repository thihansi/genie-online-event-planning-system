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

@WebServlet("/ReviewDeleteServlet")
public class ReviewDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
  	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    //int id = Integer.parseInt(request.getParameter("id"));
	    
	    try {
	    	int id = Integer.parseInt(request.getParameter("id"));
	    	
	    	//Establish a database connection
	    	  Connection conn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/events", "root", "sjanisha#TV1914");
	    	
	    	//Retreive data from database
	    	String sql = "SELECT * FROM reviews WHERE ID = '"+id+"'";
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
	    	request.getRequestDispatcher("deleteReview.jsp").forward(request, response);
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
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int Id =Integer.parseInt(request.getParameter("Id"));
		boolean isTrue;
		
		isTrue = ReviewDBUtil.deleteEvent(Id);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/admindisplayServlet");
			dis.forward(request, response);
		}else {
			Review reviewsDetails = ReviewDBUtil.getReviewById(Id);
			request.setAttribute("reviewsDetails", reviewsDetails);
			RequestDispatcher dis = request.getRequestDispatcher("displayReviews.jsp");
			dis.forward(request, response);
		}
		
	}

}
