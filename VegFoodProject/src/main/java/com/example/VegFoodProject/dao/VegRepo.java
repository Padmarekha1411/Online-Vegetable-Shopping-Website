package com.example.VegFoodProject.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.VegFoodProject.bean.Vegetables;

public interface VegRepo extends CrudRepository<Vegetables, Integer>{

}
