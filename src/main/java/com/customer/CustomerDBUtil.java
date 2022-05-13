package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static List<Customer> validate(String name, String email){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			   con = DBConnect.getConnection();
			   stmt = con.createStatement();
			   String sql = "select * from customer where name='"+name+"' and email='"+email+"'";			   
			   rs = stmt.executeQuery(sql);
			   
			   if (rs.next()) {
					int id = rs.getInt(1);
					String nameU = rs.getString(2);
					String emailU = rs.getString(3);
					String phone = rs.getString(4);
					String items = rs.getString(5);
					String amount = rs.getString(6);

					Customer c = new Customer(id,nameU,emailU,phone,items,amount);
					customer.add(c);

				} else {
					
				}
			   
		   }
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return customer;
	
	}

public static boolean insertcustomer(String name,String email,String phone,String items,String amount) {
	
	boolean isSuccess = false;
	 
	 try {
		 con = DBConnect.getConnection();
		 stmt = con.createStatement();
		 String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+items+"','"+amount+"')" ;
		 int rs = stmt.executeUpdate(sql);
		 
		 if(rs > 0) {
			 isSuccess = true;
		 }else {
			 isSuccess = false;
		 }
		 
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	
	return isSuccess;
}

public static boolean updatecustomer(String id, String name, String email, String phone, String items, String amount) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update customer set name='"+name+"',email='"+email+"',phone='"+phone+"',items='"+items+"',amount='"+amount+"'"+"where id='"+id+"'";
		int rs = stmt.executeUpdate(sql);
		
		if (rs>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
	
}

public static List<Customer> getCustomerDetails(String Id){
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Customer> cus = new ArrayList<>();
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String email = rs.getString(3);
			String phone = rs.getString(4);
			String items = rs.getString(5);
			String amount = rs.getString(6);
			
			Customer c = new Customer(id,name,email,phone,items,amount);
			cus.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return cus;
}

public static boolean deleteCustomer(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from customer where id ='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if(r>0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


}
