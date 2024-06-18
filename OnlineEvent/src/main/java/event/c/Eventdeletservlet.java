package event.c;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Eventdeletservlet")
public class Eventdeletservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	            int id = Integer.parseInt(request.getParameter("id"));
	            
	            // Establish a database connection
	            Connection conn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/events", "root", "sjanisha#TV1914");

	            // Retrieve data from the database based on the ID
	            String sql = "SELECT * FROM details WHERE Id = '"+id+"'";
	            PreparedStatement pstmt = conn.prepareStatement(sql); // No need to set parameters

	            ResultSet rs = pstmt.executeQuery();

	            

	            List<Event> cusDetails = new ArrayList<>();

	            if (rs.next()) {
	            	int Id = rs.getInt(1);
	    			String name = rs.getString(2);
	    			String Description = rs.getString(3);
	    			String Price_range = rs.getString(4);
	    			String Contact = rs.getString(5);
	    			String Availability = rs.getString(6);
	                
	    			Event c = new Event( Id , name, Description, Price_range, Contact, Availability);
	    			cusDetails.add(c);
	            }

	            // Set the list as an attribute
	            request.setAttribute("cusDetails", cusDetails);

	            // Forward the request to the JSP
	            request.getRequestDispatcher("Eventdelete.jsp").forward(request, response);

	            conn.close();
	         
	    	} catch (SQLException e) {
	    		e.printStackTrace();
	    		response.getWriter().write("SQL Error: " + e.getMessage());
	    	} catch (IOException e) {
	    		e.printStackTrace();
	    		response.getWriter().write("IO Error: " + e.getMessage());
	    }
	    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int Id =Integer.parseInt(request.getParameter("id"));
		boolean isTrue;
		
		isTrue = eventdbutil.deleteEvent(Id);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/displaysetailsservlet");
			dis.forward(request, response);
		}else {
			List<Event> cusDetails = eventdbutil.geteventDetails(Id);
			request.setAttribute("cusDetails", cusDetails);
			RequestDispatcher dis = request.getRequestDispatcher("details.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
