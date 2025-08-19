package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
import model.customer;



public class customerServices {
	
	public void regCustomer(customer cus) {
		try {
			
			String query = "insert into customer values('"+cus.getId()+"','"+cus.getName()+"','"+cus.getNic()+"','"+cus.getAccountNum()+"','"+cus.getAddress()+"','"+cus.getContactNo()+"','"+cus.getEmail()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	public ArrayList<customer> getAllCustomers(){
		try {
			ArrayList<customer> listCus = new ArrayList<customer>();
			
			String query = "select * from customer";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query); 
			
			while(rs.next()) {
				customer cus = new customer();
				cus.setId(rs.getInt("id"));
				cus.setName(rs.getString("name"));
				cus.setNic(rs.getString("nic"));
				cus.setAccountNum(rs.getString("accountnum"));
				cus.setAddress(rs.getString("address"));
				cus.setContactNo(rs.getString("contactno"));
				cus.setEmail(rs.getString("email"));
				listCus.add(cus);
			}
			return listCus;
			
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public boolean validateCus(customer cus) {
		try {
			String query = "select * from customer where name = '"+cus.getName()+"' and nic = '"+cus.getNic()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query); 
			
			if(rs.next()) {
				return true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public customer getCus(customer cus) {
		try {
			String query = "select * from customer where name = '"+cus.getName()+"' and nic = '"+cus.getNic()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query); 
			
			if(rs.next()) {
				cus.setId(rs.getInt("id"));
				cus.setName(rs.getString("name"));
				cus.setNic(rs.getString("nic"));
				return cus;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public customer singleData(customer cus) {
		try {
			String query = "select * from customer where id = '"+cus.getId()+"' and nic = '"+cus.getNic()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query); 
			
			if(rs.next()) {
				cus.setId(rs.getInt("id"));
				cus.setName(rs.getString("name"));
				cus.setNic(rs.getString("nic"));
				cus.setAccountNum(rs.getString("accountnum"));
				cus.setAddress(rs.getString("address"));
				cus.setContactNo(rs.getString("contactno"));
				cus.setEmail(rs.getString("email"));
				return cus;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	
	public boolean updateCustomer(customer cus) {
		try {
			
			String query = "update customer SET id='"+cus.getId()+"',name='"+cus.getName()+"', nic='"+cus.getNic()+"',accountnum='"+cus.getAccountNum()+"',address='"+cus.getAddress()+"',contactno='"+cus.getContactNo()+"',email='"+cus.getEmail()+"' where id='"+cus.getId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return false;
		
	}
	
	
	public boolean deleteCustomer(customer cus) {
		try {
			
			String query = "Delete from customer where id = '"+cus.getId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return true;
		
	}
	

}
