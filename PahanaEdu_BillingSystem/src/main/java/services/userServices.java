package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
import model.user;

public class userServices {
	
	public void regUser(user usr) {
		try {
			
			String query = "insert into user values('"+usr.getUsername()+"','"+usr.getName()+"','"+usr.getAge()+"','"+usr.getEmail()+"','"+usr.getPassword()+"')";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	public boolean validate(user usr) {
		try {
			String query = "select * from user where username = '"+usr.getUsername()+"'and password = '"+usr.getPassword()+"'";
			
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
	
	public user getOne(user usr) {
		try {
			String query = "select * from user where username = '"+usr.getUsername()+"'and password = '"+usr.getPassword()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query); 
			
			if(rs.next()) {
				usr.setName(rs.getString("name"));
				usr.setUsername(rs.getString("username"));
				usr.setAge(rs.getInt("age"));
				usr.setEmail(rs.getString("email"));
				usr.setPassword(rs.getString("password"));
				return usr;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ArrayList<user> getAllUsers(){
		try {
			ArrayList<user> listUsr = new ArrayList<user>();
			
			String query = "select * from user";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query); 
			
			while(rs.next()) {
				user usr = new user();
				usr.setName(rs.getString("name"));
				usr.setUsername(rs.getString("username"));
				usr.setAge(rs.getInt("age"));
				usr.setEmail(rs.getString("email"));
				usr.setPassword(rs.getString("password"));
				listUsr.add(usr);
			}
			return listUsr;
			
			
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}

}
