package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.item;
import services.itemServices;


@WebServlet("/deleteItemsServlet")
public class deleteItemsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deleteItemsServlet() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		item itm = new item();
		itm.setItemid(request.getParameter("itemid"));

		itemServices service = new itemServices();
		service.deleteItems(itm);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("viewItemServlet");
		dispatcher.forward(request,response);
	}

}
