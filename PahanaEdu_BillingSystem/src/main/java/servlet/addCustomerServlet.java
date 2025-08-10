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


@WebServlet("/addCustomerServlet")
public class addCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public addCustomerServlet() {
        super();
   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		customer cus = new customer();
		cus.setId(Integer.parseInt(request.getParameter("id")));
		cus.setName(request.getParameter("name"));
		cus.setNic(request.getParameter("nic"));
		cus.setAccountNum(request.getParameter("accountnum"));
		cus.setAddress(request.getParameter("address"));
		cus.setContactNo(request.getParameter("contactno"));
		cus.setEmail(request.getParameter("email"));
		
		customerServices service = new customerServices();
		service.regCustomer(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		
		dispatcher.forward(request,response);
		

	}

}
