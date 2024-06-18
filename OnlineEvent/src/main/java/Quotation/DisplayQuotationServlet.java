package Quotation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DisplayQuotationServlet")
public class DisplayQuotationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<Quotation>qutDetails = QuotationDBUtil.displayAll();
			request.setAttribute("qutDetails",qutDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis  = request.getRequestDispatcher("AdminQuotationView.jsp");
		dis.forward(request , response);
	}




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<Quotation>qutDetails = QuotationDBUtil.displayAll();
			request.setAttribute("qutDetails",qutDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis  = request.getRequestDispatcher("AdminQuotationView.jsp");
		dis.forward(request , response);
	}

}
