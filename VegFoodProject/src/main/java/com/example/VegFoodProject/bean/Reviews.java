package com.example.VegFoodProject.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Reviews {

	@Id
	private String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	private String comments;
	private String name;
	private String profession;
}
