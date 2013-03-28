package com.shopping.empory.dao.impl;

import java.util.List;

import org.junit.Test;

import com.shopping.empory.pojo.Category;

public class CategoryDao4MySqlImpltest {

	@Test
	public void testgetCategory() {
		List<Category> c = new CategoryDao4MySqlImpl().getCategory();
		System.out.println(c.get(0).getName());
	}
	@Test
	public void testgetChildenByPid(){
		List<Category> c = new CategoryDao4MySqlImpl().getChildenByPid(1);
		for (Category category : c) {
			System.out.println(category.getName());
		}
	}
	
	@Test
	public void testaddCategory(){
		Category category = new Category();
		category.setName("篮球");
		category.setDescr("篮球系列");
		int c =new CategoryDao4MySqlImpl().addCategory(30, category);
	}
	
	@Test
	public void testalterCategoryById(){
		Category c = new Category();
		c.setName("足球");
		c.setDescr("足球系列");
		new CategoryDao4MySqlImpl().alterCategoryById(31, c);
	}

}
