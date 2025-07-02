package com.customer;

public class booking {
	
	private int bid;
	private String name;
	private String email;
	private String phone;
	private String journyfrom;
	private String journyto;
	private String classtype;
	private String passengers;
	private String date;
	
	public booking(int bid, String name, String email, String phone, String journyfrom, String journyto,
			String classtype, String passengers,String date) {
		super();
		this.bid = bid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.journyfrom = journyfrom;
		this.journyto = journyto;
		this.classtype = classtype;
		this.passengers = passengers;
		this.date=date;
	}

	public int getBid() {
		return bid;
	}

	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}

	
	public String getPhone() {
		return phone;
	}
	
	public String getJournyfrom() {
		return journyfrom;
	}
	
	public String getJournyto() {
		return journyto;
	}

	public String getClasstype() {
		return classtype;
	}

	public String getPassengers() {
		return passengers;
	}

	public String getDate() {
		return date;
	}
	
}
