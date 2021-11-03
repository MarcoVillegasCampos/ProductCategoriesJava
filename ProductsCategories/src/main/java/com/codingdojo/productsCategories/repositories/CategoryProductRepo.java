package com.codingdojo.productsCategories.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.productsCategories.models.CategoryProduct;



@Repository
public interface CategoryProductRepo extends CrudRepository<CategoryProduct,Long>{

}
