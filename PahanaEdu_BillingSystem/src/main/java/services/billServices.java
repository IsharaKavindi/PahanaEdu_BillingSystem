package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
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
	

}
