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


@WebServlet("/addItemServlet")
public class addItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addItemServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		item itm = new item();
		itm.setItemid(request.getParameter("itemid"));
		itm.setTitle(request.getParameter("title"));
		itm.setAuthor(request.getParameter("author"));
		itm.setCategory(request.getParameter("category"));
		itm.setPrice(Integer.parseInt(request.getParameter("price")));
		itm.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		
		itemServices service = new itemServices();
		service.regItem(itm);
		
		 ArrayList<item> itemList = service.getAllItems();
	        

	        request.setAttribute("items", itemList);
		
	    request.setAttribute("popupMessage", "Item added successfully");
		RequestDispatcher dispatcher = request.getRequestDispatcher("viewItemServlet");
		
		dispatcher.forward(request,response);
		
	
		doGet(request, response);
	}

}
