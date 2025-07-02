package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt =null;
	private static ResultSet rs= null;
	
	public static List<Payment> validate(String name,String cardnumber){
		ArrayList<Payment> pay =new ArrayList<>();
		
		String url ="jdbc:mysql://localhost:3306/train";
		String user ="root";
		String pass ="12345";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql ="select * from payment where name ='"+name+"'and cardnumber ='"+cardnumber+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int pid =rs.getInt(1);
				String name1 =rs.getString(2);
				String cardnumber1 =rs.getString(3);
				String cardtype =rs.getString(4);
				String date =rs.getString(5);
				String cvv =rs.getString(6);
				
				Payment p = new Payment (pid,name1,cardnumber1,cardtype,date,cvv);
				pay.add(p);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}		
		return pay;
	}
	
	
	public static boolean insertpayment(String name,String cardnumber,String cardtype,String date,String cvv) {
		
		boolean isSuccess = false;

		String url ="jdbc:mysql://localhost:3306/train";
		String user ="root";
		String pass ="12345";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt = con.createStatement();
			
			String sql = "insert into payment values(0,'"+name+"','"+cardnumber+"','"+cardtype+"','"+date+"','"+cvv+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static boolean updatepayment(String pid,String name,String cardnumber,String cardtype,String date,String cvv) {
		
		
	try {
		con =DBConnect.getConnection();
		stmt =con.createStatement();
		
		String sql ="update payment set name ='"+name+"',cardnumber ='"+cardnumber+"',cardtype ='"+cardtype+"',date='"+date+"',cvv ='"+cvv+"'"
				+ "where pid ='"+pid+"'";
		int rs=stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}else {
			isSuccess=false;
		}
			
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
		
	return isSuccess;	
	}

	public static List <Payment> getpaymentDetails(String PID){
		
		int convertedPID = Integer.parseInt(PID);
		
		ArrayList<Payment> pay = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from Payment where pid = '"+convertedPID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int pid = rs.getInt(1);
				String name    =rs.getString(2);
				String cardnumber   =rs.getString(3);
				String cardtype   =rs.getString(4);
				String date =rs.getString(5);
				String cvv   =rs.getString(6);
				
				Payment p =new Payment(pid,name,cardnumber,cardtype,date,cvv);
				pay.add(p);	
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return  pay;
		
	}
	public static boolean deletepayment(String pid) {
		
		int convpid = Integer.parseInt(pid);
		
		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="delete from payment where pid ='"+convpid+"'";
			int r =stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess =true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			
		}
		
		
		return isSuccess;
	}
	
}
