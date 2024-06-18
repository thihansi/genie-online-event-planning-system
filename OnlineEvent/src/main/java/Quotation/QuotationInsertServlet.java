package Quotation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QuotationInsertServlet")
public class QuotationInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String eType = request.getParameter("eType");
		String edate = request.getParameter("edate");
		String venue = request.getParameter("venue");
		String Sreq = request.getParameter("specialReq");

		boolean isTrue;
		
		isTrue = QuotationDBUtil.insertQuotation(name, phone, email, edate, venue, Sreq, eType);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/DisplayClientQuotationServlet");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("ClientQuotationCreate.jsp");
			dis.forward(request, response);
		}
	
	
	}

}
