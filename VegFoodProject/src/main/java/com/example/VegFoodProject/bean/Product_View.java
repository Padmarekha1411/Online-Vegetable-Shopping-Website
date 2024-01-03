package com.example.VegFoodProject.bean;

import jakarta.persistence.Entity;

@Entity
public class Product_View {

	@jakarta.persistence.Id
	private int Id;
	private String image;
	private String name;
	private String price;
	private String Pid;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPid() {
		return Pid;
	}
	public void setPid(String pid) {
		Pid = pid;
	}
}
