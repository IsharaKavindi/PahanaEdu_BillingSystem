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

/**
 * Servlet implementation class singleItemData
 */
@WebServlet("/singleItemData")
public class singleItemData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public singleItemData() {
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
		item itm = new item();
		itm.setItemid(request.getParameter("itemid"));
		itemServices service = new itemServices();
		item item = service.getItem(itm);
		RequestDispatcher dispatcher = request.getRequestDispatcher("item.jsp");
		request.setAttribute("item",item);
		
		dispatcher.forward(request, response);
		doGet(request, response);
	}

}
