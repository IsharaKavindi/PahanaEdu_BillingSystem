package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public adminLoginServlet() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");


		    if("admin123".equals(username) && "a123".equals(password)) {
		        request.setAttribute("popupMessage", "Login Successfully");
		        RequestDispatcher dispatcher = request.getRequestDispatcher("adminDash.jsp");
		        dispatcher.forward(request, response);
		    } else {
		        request.setAttribute("popupMessage", "Incorrect username or password");
		        RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		        dispatcher.forward(request, response);
		    }
		
	}

}
