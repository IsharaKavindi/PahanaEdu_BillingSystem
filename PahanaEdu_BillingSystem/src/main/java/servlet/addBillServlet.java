package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import model.bill;
import services.billServices;

@WebServlet("/addBillServlet")
public class addBillServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public addBillServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        try {
            bill bl = new bill();

            bl.setBillid(parseIntOrDefault(request.getParameter("billid"), 0));

            String billnum = trimOrNull(request.getParameter("billnum"));
            if (billnum == null) {
                forwardWithError(request, response, "Bill number is missing", "generateBillServlet");
                return;
            }
            bl.setBillnum(billnum);
            bl.setDate(request.getParameter("date"));
            bl.setTime(request.getParameter("time"));
            bl.setTotalitems(parseIntOrDefault(request.getParameter("totalitems"), 0));
            bl.setTotal(parseIntOrDefault(request.getParameter("total"), 0));
            bl.setPoints(parseIntOrDefault(request.getParameter("points"), 0));
            int cusid = parseIntOrDefault(request.getParameter("cusid"), -1);
            if (cusid <= 0) {
            	request.setAttribute("popupMessage", "Please make sure to add customer before printing the bill.");
                forwardWithError(request, response, "Customer must be selected", "generateBillServlet");
                return;
            }
            bl.setCusid(cusid);
            bl.setCusnic(request.getParameter("cusnic"));

            if (bl.getTotalitems() <= 0) {
            	request.setAttribute("popupMessage", "Please make sure to add customer before printing the bill.");
                forwardWithError(request, response, "Please add items to the bill", "generateBillServlet");
                return;
            }

            billServices service = new billServices();
            if (service.addBill(bl)) {
                request.getSession().removeAttribute("billList");
                request.getSession().removeAttribute("billNumber");
                request.getSession().removeAttribute("customer");
                request.setAttribute("success", "Bill created successfully! Bill Number: " + bl.getBillnum());
            } else {
                request.setAttribute("error", "Failed to save bill to database");
            }

        } catch (NumberFormatException e) {
            e.printStackTrace();
            request.setAttribute("error", "Invalid number format: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error creating bill: " + e.getMessage());
        }
        
        request.setAttribute("popupMessage", "Bill Printed Successfully");
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewBillingServlet");
        dispatcher.forward(request, response);

    }

    private int parseIntOrDefault(String param, int defaultValue) {
        return (param != null && !param.trim().isEmpty()) ? Integer.parseInt(param.trim()) : defaultValue;
    }

    private String trimOrNull(String param) {
        return (param != null && !param.trim().isEmpty()) ? param.trim() : null;
    }

    private void forwardWithError(HttpServletRequest request, HttpServletResponse response, 
                                   String errorMsg, String page) throws ServletException, IOException {
        request.setAttribute("error", errorMsg);
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        dispatcher.forward(request, response);
    }
}
