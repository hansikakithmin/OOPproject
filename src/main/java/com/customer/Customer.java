package com.customer;

public class Customer {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String items;
	private String amount;
	
	public Customer(int id, String name, String email, String phone, String items, String amount) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.items = items;
		this.amount = amount;
	}

	public int getId() {
		return id;
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

	public String getItems() {
		return items;
	}

	public String getAmount() {
		return amount;
	}

	

}
