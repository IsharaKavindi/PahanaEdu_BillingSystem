package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
import model.bill;
import model.billitem;


public class billServices {
	
	public void addBillItem(billitem bitm) {
		try {
			
			String query = "insert into billitem values('"+bitm.getBillid()+"','"+bitm.getItemid()+"','"+bitm.getTitle()+"','"+bitm.getQuantity()+"','"+bitm.getPrice()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query); 
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	
    public ArrayList<billitem> getAllBillItems() {
    	ArrayList<billitem> billList = new ArrayList<>();
        try {
            String query = "SELECT * FROM billitem";
            Statement stmt = DBConnect.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                billitem b = new billitem();
                b.setBillid(rs.getInt("billid"));
                b.setItemid(rs.getString("itemid"));
                b.setTitle(rs.getString("title"));
                b.setQuantity(rs.getInt("quantity"));
                b.setPrice(rs.getInt("price"));
                billList.add(b);
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return billList;
    }
    
	public boolean addBill(bill bl) {
		try {
			
			String query = "insert into bills values('"+bl.getBillid()+"','"+bl.getBillnum()+"','"+bl.getDate()+"','"+bl.getTime()+"','"+bl.getTotalitems()+"','"+bl.getTotal()+"','"+bl.getPoints()+"','"+bl.getCusid()+"','"+bl.getCusnic()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return true;
		
	}
	
	
    public ArrayList<bill> getAllBills() {
    	ArrayList<bill> billList = new ArrayList<>();
        try {
            String query = "SELECT * FROM bills";
            Statement stmt = DBConnect.getConnection().createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while(rs.next()) {
                bill bl = new bill();
                bl.setBillid(rs.getInt("billid"));
                bl.setBillnum(rs.getString("billnum"));
                bl.setDate(rs.getString("date"));
                bl.setTime(rs.getString("time"));
                bl.setTotalitems(rs.getInt("totalitems"));
                bl.setTotal(rs.getInt("total"));
                bl.setPoints(rs.getInt("points"));
                bl.setCusid(rs.getInt("cusid"));
                bl.setCusnic(rs.getString("cusnic"));
                billList.add(bl);
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return billList;
    }
	
    
	public boolean deleteBills(bill bl) {
		try {
			
			String query = "Delete from bills where billid = '"+bl.getBillid()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return true;
		
	}
	
	

}
