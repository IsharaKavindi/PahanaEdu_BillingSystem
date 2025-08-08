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

/**
 * Servlet implementation class updateCustomerServlet
 */
@WebServlet("/updateCustomerServlet")
public class updateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
		service.updateCustomer(cus);
		
		request.setAttribute("popupMessage", "Customer updated successfully!");
		RequestDispatcher dispatcher = request.getRequestDispatcher("singleData");
		
		dispatcher.forward(request,response);
	}

}
