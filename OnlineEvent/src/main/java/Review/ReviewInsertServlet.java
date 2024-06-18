package Review;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReviewInsertServlet")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Event = request.getParameter("Event");
		String ReviewTitle = request.getParameter("ReviewTitle");
		String ClientName = request.getParameter("ClientName");
		String Phone = request.getParameter("Phone");
		String Rating = request.getParameter("Rating");
		String R_content = request.getParameter("R_content");
		String Further_contact = request.getParameter("Further_contact");
		
		boolean isTrue;
		
		isTrue = ReviewDBUtil.insertReview(Event, ReviewTitle, ClientName, Phone, Rating, R_content, Further_contact);
	
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("/displayReviewsSerrvlet");
			
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
