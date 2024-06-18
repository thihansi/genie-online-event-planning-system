package event.c;

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

@WebServlet("/eventupdateservlet")
public class eventupdateservlet extends HttpServlet {
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
            request.getRequestDispatcher("Update.jsp").forward(request, response);

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
		String Name =request.getParameter("name");
		String Description =request.getParameter("description");
		String Price_range =request.getParameter("price_range");
		String Contact =request.getParameter("contact");
		String Availability =request.getParameter("availability");
		
		boolean isTrue;
		
		isTrue = eventdbutil.updateevent( Id,Name,Description, Price_range, Contact, Availability);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/displaysetailsservlet");
			dis.forward(request, response);
		    
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsucces.jsp");
			dis2.forward(request, response);

	}
    }
    
}