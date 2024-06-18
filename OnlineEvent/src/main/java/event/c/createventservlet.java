package event.c;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/createventservlet")
public class createventservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name =request.getParameter("name");
		String Description =request.getParameter("para");
		String Price_range =request.getParameter("prange");
		String Contact =request.getParameter("phone");
		String Availability =request.getParameter("availability");
		
		boolean isTrue;
		
		isTrue = eventdbutil.insertevent(name, Description, Price_range, Contact, Availability);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/displaysetailsservlet");
			dis.forward(request,response);
		}		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("createvent.jsp");
			dis2.forward(request,response);
		}
	
	
	}

}