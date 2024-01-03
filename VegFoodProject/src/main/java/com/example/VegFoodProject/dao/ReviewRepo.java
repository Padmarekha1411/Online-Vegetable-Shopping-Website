package com.example.VegFoodProject.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.VegFoodProject.bean.Reviews;

public interface ReviewRepo extends CrudRepository<Reviews, String>{

}
