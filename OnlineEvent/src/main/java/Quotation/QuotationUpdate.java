package Quotation;

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

@WebServlet("/QuotationUpdate")
public class QuotationUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            
            // Establish a database connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventplanner", "root", "sjanisha#TV1914");

            // Retrieve data from the database based on the ID
            String sql = "SELECT * FROM quotation WHERE QID = '"+id+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql); // No need to set parameters

            ResultSet rs = pstmt.executeQuery();

            

            List<Quotation> quotationList = new ArrayList<>();

            if (rs.next()) {
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
                
                quotationList.add(q);
            }

            // Set the list as an attribute
            request.setAttribute("qutDetails", quotationList);

            // Forward the request to the JSP
            request.getRequestDispatcher("AdminQuotationUpdate.jsp").forward(request, response);

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
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("clientName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String edate = request.getParameter("edate");
		String venue = request.getParameter("venue");
		String Sreq = request.getParameter("sr");
		String eType = request.getParameter("type");
		
		boolean isTrue;
		
		isTrue = QuotationDBUtil.updateQuotation(id, name, phone, email, edate, venue, Sreq, eType);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/DisplayQuotationServlet");
			
			dis.forward(request, response);
		    
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("AdminQuotationUpdate.jsp");
			dis2.forward(request, response);

	}
    }
    
}


