package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.user;
import services.userServices;


@WebServlet("/addUserServlet")
public class addUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public addUserServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		user usr = new user();
		usr.setName(request.getParameter("name"));
		usr.setUsername(request.getParameter("username"));
		usr.setAge(Integer.parseInt(request.getParameter("age")));
		usr.setEmail(request.getParameter("email"));
		usr.setPassword(request.getParameter("password"));
		
		userServices service = new userServices();
		service.regUser(usr);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		
		dispatcher.forward(request,response);
		
		doGet(request, response);
	}

}
