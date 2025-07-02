package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class bookingDBUtill {
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
		
		
	public static List<booking> validate(String name,String email)
	{
		ArrayList <booking> book = new ArrayList<>();
		
		//create database connection
		/*String url = "jdbc:mysql://localhost:3306/train";
		String user ="root";
		String pass = "12345";*/		
		//validate
		
		try {
			//Class.forName("com.mysql.jdbc.Driver");			
			//Connection con =DriverManager.getConnection(url,user,pass);
			//Statement stmt =con.createStatement();	
			
			con=DBConnect.getConnection();
			stmt=con.createStatement();			
			
			String sql = "select * from booking where name ='"+name+"'and email ='"+email+"'";			
			ResultSet rs = stmt.executeQuery(sql);			
			 rs=stmt.executeQuery(sql);
			
			if(rs.next()) 
			{
				int bid = rs.getInt(1);
				String name1 =rs.getString(2);
				String email1 =rs.getString(3);
				String phone =rs.getString(4);
				String journyfrom =rs.getString(5);
				String journyto =rs.getString(6);
				String classtype =rs.getString(7);
				String passengers =rs.getString(8);
				String date =rs.getString(9);
				
				booking b =new booking(bid,name1,email1,phone,journyfrom,journyto,classtype,passengers,date);
				book.add(b);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
				
		return book;
		
		}
	
	public static boolean showbooking(String name,String email, String phone, String journyfrom,String journyto,String classtype, String passengers,String date)
	{
		boolean isSuccess=false;
		
		try {
			
		con=DBConnect.getConnection();
		 stmt=con.createStatement();	
         String sql = "insert into booking values(0,'"+name+"','"+email+"', '"+phone+"' ,'"+phone+"','"+journyfrom+"','"+journyto+"','"+passengers+"','"+date+"')";
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
	
	
		public static boolean insertbooking(String name,String email, String phone, String journyfrom,String journyto,String classtype, String passengers ,String date)
		{
			boolean isSuccess=false;
			
			try {
				
			con=DBConnect.getConnection();
			 stmt=con.createStatement();	
             String sql = "insert into booking values(0,'"+name+"','"+email+"', '"+phone+"' ,'"+phone+"','"+journyfrom+"','"+journyto+"','"+passengers+"','"+date+"')";
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
		

		public static boolean updatebooking(String bid,String name,String email,String phone,String journyfrom,String journyto,String classtype,String passengers,String date) {
			
		
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql ="update booking set name='"+name+"' ,email ='"+email+"',phone ='"+phone+"',journyfrom ='"+journyfrom+"',journyto ='"+journyto+"',classtype ='"+classtype+"',passengers='"+passengers+"',date='"+date+"' " +"where bid='"+bid+"'";
				
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
		
		public static List <booking> getBookingDetails(String BID){
			
			int convertedBID = Integer.parseInt(BID);
			
			ArrayList<booking> book = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "Select * from booking where bid = '"+convertedBID+"'";
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					
					int bid = rs.getInt(1);
					String name    =rs.getString(2);
					String email   =rs.getString(3);
					String phone   =rs.getString(4);
					String journyfrom =rs.getString(5);
					String journyto   =rs.getString(6);
					String classtype  =rs.getString(7);
					String passengers =rs.getString(8);
					String date =rs.getString(9);
					
					booking b =new booking(bid,name,email,phone,journyfrom,journyto,classtype,passengers,date);
					book.add(b);	
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return  book;
			
		}

		public static boolean deleteBooking(String bid) {
			int convbid = Integer.parseInt(bid);

			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "delete  from booking where bid = '"+convbid+"'";
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

