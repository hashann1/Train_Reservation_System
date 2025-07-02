package com.customer;

public class Customer {
	
	private int id;
	private String fname;
	private String lname;
	private String nic;
	private String phone;
	private String email;
	private String userName;
	private String password;
	
	public Customer(int id, String fname, String lname, String nic, String phone, String email, String userName,String password)
	{
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.nic = nic;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}
	
	public String getNic() {
		return nic;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	
	
	
	

}
