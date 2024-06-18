package UserLogin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// Get the username and password from the login form
        String username = request.getParameter("UserName");
        String password = request.getParameter("password");

        // Authenticate the user using the UserDBUtil
        boolean isAuthenticated = UserDBUtil.authenticateUser(request, username, password);

        if (isAuthenticated) {
            // Redirect to a success page or home page
            response.sendRedirect("adminhome.jsp");
        } else {
            // Redirect to a login error page
            response.sendRedirect("Login.jsp");
        }
	}
}
