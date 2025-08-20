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


@WebServlet("/customerBillServlet")
public class customerBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public customerBillServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		customer cus = new customer();
		cus.setNic(request.getParameter("nic"));
		cus.setName(request.getParameter("name"));
		
		customerServices service = new customerServices();
		boolean status = service.validateCus(cus);
		if(status) {
		    customer getedCus = service.getCus(cus);
		    request.setAttribute("popupMessage", "Customer added to bill successfully");
		    RequestDispatcher dispatcher = request.getRequestDispatcher("generateBill.jsp");
		    request.setAttribute("customer",getedCus);
		    dispatcher.forward(request,response);
		}else {
			request.setAttribute("popupMessage", "Invalid customer details");
		    RequestDispatcher dispatcher = request.getRequestDispatcher("generateBill.jsp");
		    dispatcher.forward(request,response);
		}
		
		doGet(request, response);
	
	}

}
