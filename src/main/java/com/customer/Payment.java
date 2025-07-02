package com.customer;

public class Payment {
	
	private int pid;
	private String name;
	private String cardnumber;
	private String cardtype;
	private String date;
	private String cvv;
	


	public Payment(int pid, String name, String cardnumber, String cardtype, String date,String cvv) {
		super();
		this.pid = pid;
		this.name = name;
		this.cardnumber = cardnumber;
		this.cardtype = cardtype;
		this.date = date;
		this.cvv=cvv;
	}

	public int getPid() {
		return pid;
	}

	public String getName() {
		return name;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public String getCardtype() {
		return cardtype;
	}

	public String getDate() {
		return date;
	}
	
	public String getCvv() {
		return cvv;
	}
}
