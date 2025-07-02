package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static boolean validatee(String userName,String password) {
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql ="select * from customer where userName ='"+userName+"'and password ='"+password+"'";
			rs =stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess =true;
				
			}else {
				isSuccess=false;
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
		
	public static List<Customer> validate(String userName,String password)
	{ 
		ArrayList <Customer> cus = new ArrayList<>();
		
		
		try {
		
			con=DBConnect.getConnection();
			stmt=con.createStatement();			
			
			String sql = "select * from customer where username ='"+userName+"'and password ='"+password+"'";			
			//ResultSet rs = stmt.executeQuery(sql);			
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) 
			{
				int id = rs.getInt(1);
				String fname =rs.getString(2);
				String lname =rs.getString(3);
				String nic =rs.getString(4);
				String phone =rs.getString(5);
				String email =rs.getString(6);
				String userU =rs.getString(7);
				String passU =rs.getString(8);
				
				Customer c =new Customer(id,fname,lname,nic,phone,email,userU,passU);
				cus.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
		
		
	}
	
	public static boolean insertcustomer(String firstname,String lastname,String nic, String phoneNo, String email,String username, String password) {
		
		boolean isSuccess = false;
		
		//		String url = "jdbc:mysql://localhost:3306/train";
		//		String user ="root";
		//		String pass = "12345";
		
		try {
			
			//		Class.forName("com.mysql.jdbc.Driver");//		
			//		Connection con =DriverManager.getConnection(url,user,pass);
			//		Statement stmt =con.createStatement();
			 
			 con=DBConnect.getConnection();
			 stmt=con.createStatement();	
             String sql = "insert into Customer values(0,'"+firstname+"','"+lastname+"', '"+nic+"' ,'"+phoneNo+"','"+email+"','"+username+"','"+password+"')";
		     int rs = stmt.executeUpdate(sql);
		
		  if(rs>0) 
		   {
			isSuccess = true;			
		   }
		  else 
		   {			
			isSuccess = false;
		   }
		
		}
		  
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
	
	
	public static boolean updatecustomer(String id,String fname,String lname,String nic,String phone,String email,String userName,String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update customer set fname='"+fname+"' ,lname ='"+lname+"',nic ='"+nic+"',phone ='"+phone+"',"
					+ "email ='"+email+"',username ='"+userName+"',password='"+password+"'"+"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs  >  0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	public static List <Customer> getCustomerDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from customer where id = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String fname =rs.getString(2);
				String lname =rs.getString(3);
				String nic   =rs.getString(4);
				String phone =rs.getString(5);
				String email =rs.getString(6);
				String userU =rs.getString(7);
				String passU =rs.getString(8);
				
				Customer c =new Customer(id,fname,lname,nic,phone,email,userU,passU);
				cus.add(c);	
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return  cus;
		
	}
	public static boolean deleteCustomer (String id) {
		
		int convID = Integer.parseInt(id);

		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete  from customer where id = '"+convID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r>0) {
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
	
	
	
	

}
