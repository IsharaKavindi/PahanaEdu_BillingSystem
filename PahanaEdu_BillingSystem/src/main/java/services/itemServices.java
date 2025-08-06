package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


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
	
		
		
	

}
