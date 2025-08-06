package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.customerServices;


@WebServlet("/viewCustomersServlet")
public class viewCustomersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public viewCustomersServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		customerServices service = new customerServices();
		ArrayList<customer> customer = service.getAllCustomers();
		request.setAttribute("customer",customer);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("customerTable.jsp");
		dispatcher.forward(request,response);
	}

}
