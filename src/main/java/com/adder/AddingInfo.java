package com.adder;

import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
@Table(name = "AddingInfo")
public class AddingInfo 
{   @Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int productID;
private String productName;
private String description;
private int price;


public AddingInfo(int productID, String productName, String description, int price) {
	super();
	this.productID = productID;
	this.productName = productName;
	this.description = description;
	this.price = price;
}


public AddingInfo() {
	super();
	// TODO Auto-generated constructor stub
}


public int getProductID() {
	return productID;
}


public void setProductID(int productID) {
	this.productID = productID;
}


public String getProductName() {
	return productName;
}


public void setProductName(String productName) {
	this.productName = productName;
}


public String getDescription() {
	return description;
}


public void setDescription(String description) {
	this.description = description;
}


public int getPrice() {
	return price;
}


public void setPrice(int price) {
	this.price = price;
}


@Override
public String toString() {
	return "AddingInfo [productID=" + productID + ", productName=" + productName + ", Description=" + description
			+ ", price=" + price + "]";
}

}
