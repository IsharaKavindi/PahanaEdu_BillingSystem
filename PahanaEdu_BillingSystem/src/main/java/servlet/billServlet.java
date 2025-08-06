package servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.billitem;
import services.billServices;
import model.item;
import services.itemServices;


@WebServlet("/billServlet")
public class billServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public billServlet() {
        super();
      
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	itemServices service = new itemServices();
		ArrayList<item> item = service.getAllItems();
		request.setAttribute("item",item);
        request.getRequestDispatcher("bill.jsp").forward(request, response);
    }


	
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            billitem bitm = new billitem();

            bitm.setItemid(request.getParameter("itemid"));
            bitm.setTitle(request.getParameter("title"));

            int quantity = 1;
            String quantityStr = request.getParameter("quantity");
            if (quantityStr != null && !quantityStr.isEmpty()) {
                quantity = Integer.parseInt(quantityStr);
            }
            bitm.setQuantity(quantity);

            int price = 0;
            String priceStr = request.getParameter("price");
            if (priceStr != null && !priceStr.isEmpty()) {
                price = Integer.parseInt(priceStr);
            }
            bitm.setPrice(price);

            billServices service = new billServices();
            service.addBillItem(bitm);

            HttpSession session = request.getSession();
            @SuppressWarnings("unchecked")
            ArrayList<billitem> billList = (ArrayList<billitem>) session.getAttribute("billList");

            if (billList == null) {
                billList = new ArrayList<>();
            }

            billList.add(bitm);
            session.setAttribute("billList", billList);
            
            itemServices itemService = new itemServices();
            ArrayList<item> items = itemService.getAllItems();
            request.setAttribute("item", items);
          
            request.getRequestDispatcher("bill.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error adding item.");
        }
    }



}
