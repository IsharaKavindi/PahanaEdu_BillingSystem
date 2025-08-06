package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import model.user;
import services.userServices;


@WebServlet("/userLoginServlet")
public class userLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public userLoginServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		user usr = new user();
		usr.setUsername(request.getParameter("username"));
		usr.setPassword(request.getParameter("password"));
		
		userServices service = new userServices();
		boolean status = service.validate(usr);
		if(status) {
		    user loginedUsr = service.getOne(usr);

		    RequestDispatcher dispatcher = request.getRequestDispatcher("userProfile.jsp");
		    request.setAttribute("user",loginedUsr);
		    dispatcher.forward(request,response);
		}else {
		    RequestDispatcher dispatcher = request.getRequestDispatcher("userLogin.jsp");
		    dispatcher.forward(request,response);
		}
		
		doGet(request, response);
	}

}
