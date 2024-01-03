package com.example.VegFoodProject.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class All_Veg {

	@Id
	private int Id;
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
	private String image;
	private String name;
	private String price;
}
