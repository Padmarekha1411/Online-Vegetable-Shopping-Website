package com.example.VegFoodProject.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.VegFoodProject.bean.Cart;

public interface CartRepo extends CrudRepository<Cart, Integer>{

}
