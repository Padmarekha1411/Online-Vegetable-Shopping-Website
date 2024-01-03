package com.example.VegFoodProject.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.VegFoodProject.bean.Checkout;

public interface CheckoutRepo extends CrudRepository<Checkout, String> {

}
