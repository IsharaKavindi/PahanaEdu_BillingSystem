package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.customerServices;

@WebServlet("/singleCustomerDataServlet")
public class singleCustomerDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public singleCustomerDataServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		customer cus = new customer();
		cus.setId(Integer.parseInt(request.getParameter("id")));
		cus.setNic(request.getParameter("nic"));
		customerServices service = new customerServices();
		customer customerrr = service.singleData(cus);
		RequestDispatcher dispatcher = request.getRequestDispatcher("customerDetails.jsp");
		request.setAttribute("customer",customerrr);
		
		dispatcher.forward(request, response);
	}

}
