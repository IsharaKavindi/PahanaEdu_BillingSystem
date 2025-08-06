package services;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;


import controller.DBConnect;
import model.item;

public class itemServices {
	
	public void regItem(item itm) {
		try {
			
			String query = "insert into item values('"+itm.getItemid()+"','"+itm.getTitle()+"','"+itm.getAuthor()+"','"+itm.getCategory()+"','"+itm.getPrice()+"','"+itm.getQuantity()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	public ArrayList<item> getAllItems(){
		try {
			ArrayList<item> listItm = new ArrayList<item>();
			
			String query = "select * from item";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query); 
			
			while(rs.next()) {
				item itm = new item();
				itm.setItemid(rs.getString("itemid"));
				itm.setTitle(rs.getString("title"));
				itm.setAuthor(rs.getString("author"));
				itm.setCategory(rs.getString("category"));
				itm.setPrice(rs.getInt("price"));
				itm.setQuantity(rs.getInt("quantity"));
				listItm.add(itm);
			}
			return listItm;
			
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	  }
	
    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/YOUR_DB_NAME", "root", "YOUR_PASSWORD");
    }
	
	
		
	    public item getItemById(String id) {
	        item itm = null;
	        try (Connection con = getConnection();
	             java.sql.PreparedStatement ps = con.prepareStatement("SELECT * FROM item WHERE itemid=?")) {
	            
	            ps.setString(1, id);
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                itm = new item();
	                itm.setItemid(rs.getString("itemid"));
	                itm.setTitle(rs.getString("title"));
	                itm.setAuthor(rs.getString("author"));
	                itm.setCategory(rs.getString("category"));
	                itm.setPrice(rs.getInt("price"));
	                itm.setQuantity(rs.getInt("quantity"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return itm;
	    }
		
		
	

}
