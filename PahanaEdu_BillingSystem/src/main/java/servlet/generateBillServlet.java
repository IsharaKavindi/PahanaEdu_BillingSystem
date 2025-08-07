package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.billitem;



@WebServlet("/generateBillServlet")
public class generateBillServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public generateBillServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        @SuppressWarnings("unchecked")
        ArrayList<billitem> billList = (ArrayList<billitem>) session.getAttribute("billList");
        
        if (billList == null || billList.isEmpty()) {
            response.sendRedirect("itemListBilling.jsp?error=no_items");
            return;
        }
        
        double grandTotal = 0;
        int totalQuantity = 0;
        
        for (billitem item : billList) {
            double itemTotal = item.getQuantity() * item.getPrice();
            grandTotal += itemTotal;
            totalQuantity += item.getQuantity();
        }
        
        String billNumber = generateBillNumber();
        
        Date currentDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
        
        String billDate = dateFormat.format(currentDate);
        String billTime = timeFormat.format(currentDate);
        
        int pointsEarned = (int)(grandTotal / 100);
        
        request.setAttribute("billNumber", billNumber);
        request.setAttribute("billDate", billDate);
        request.setAttribute("billTime", billTime);
        request.setAttribute("grandTotal", grandTotal);
        request.setAttribute("totalQuantity", totalQuantity);
        request.setAttribute("pointsEarned", pointsEarned);
        request.setAttribute("billGenerated", true);
        
        session.setAttribute("currentBillNumber", billNumber);
        session.setAttribute("currentBillTotal", grandTotal);
        session.setAttribute("currentBillDate", currentDate);
        
        request.getRequestDispatcher("generateBill.jsp").forward(request, response);
    }
    
	
    private String generateBillNumber() {

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        String dateStr = dateFormat.format(new Date());
        int randomNum = (int)(Math.random() * 9999) + 1000; 
        return "BILL-" + dateStr + "-" + randomNum;
    }
}
