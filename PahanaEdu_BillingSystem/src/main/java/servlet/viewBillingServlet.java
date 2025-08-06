package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.item;
import services.itemServices;


@WebServlet("/viewBillingServlet")
public class viewBillingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public viewBillingServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		itemServices service = new itemServices();
		ArrayList<item> itemList = service.getAllItems();
		request.setAttribute("item",itemList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("bill.jsp");
		dispatcher.forward(request,response);
	}

}
