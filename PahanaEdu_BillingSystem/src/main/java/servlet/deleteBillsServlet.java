package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bill;
import services.billServices;


@WebServlet("/deleteBillsServlet")
public class deleteBillsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteBillsServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		bill bl = new bill();
		bl.setBillid(Integer.parseInt(request.getParameter("billid")));

		billServices service = new billServices();
		service.deleteBills(bl);
		
		request.setAttribute("popupMessage", "Bill deleted successfully");
		RequestDispatcher dispatcher = request.getRequestDispatcher("manageBillsServlet");
		dispatcher.forward(request,response);
	}

}
