package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bill;
import services.billServices;


@WebServlet("/viewBillHistory")
public class viewBillHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public viewBillHistory() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		billServices service = new billServices();
		ArrayList<bill> bill = service.getAllBills();
		request.setAttribute("bill",bill);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("billTable.jsp");
		dispatcher.forward(request,response);
	}

}
