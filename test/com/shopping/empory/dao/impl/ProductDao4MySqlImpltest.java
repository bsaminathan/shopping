package com.shopping.empory.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import com.shopping.empory.pojo.Product;

public class ProductDao4MySqlImpltest {

	@Test
	public void testsaveProduct() {
		Product p = new Product();
		p.setName("戴尔");
		p.setNcount(156);
		p.setImg("pc");
		p.setDescr("笔记本电脑");
		p.setNormalprice((double) 4560);
		p.setMemberprice((double) 4200);
		p.setCategoryid(20);
		new ProductDao4MySqlImpl().addProduct(p);
	}
	
	@Test
	public void testfindAllProduct(){
		List<Product> p = new ProductDao4MySqlImpl().getAllProduct();
		System.out.println(p.get(0).getName());
	}
	
	
	@Test
	public void testdeleteProductById(){
		new ProductDao4MySqlImpl().deleteProductById(9);
	}
	
	@Test
	public void testfindProductById(){
		Product p = new ProductDao4MySqlImpl().getProductById(8);
		System.out.println(p.getName());
	}
	
	@Test 
	public void testfindProductByCategoryid(){
		List<Product> p = new ProductDao4MySqlImpl().getProductByCategoryid(20);
		System.out.println(p.get(0).getName());
	}
	
	@Test
	public void testUpdateProductById(){
		Product p = new Product();
		p.setName("戴尔");
		p.setNcount(200);
		p.setImg("pc");
		p.setDescr("笔记本电脑");
		p.setNormalprice((double) 4560);
		p.setMemberprice((double) 4200);
		p.setCategoryid(20);
		new ProductDao4MySqlImpl().alterProduct( p);
	}
	
	@Test
	public void testGetProductSalesCountByPid(){
		System.out.println(new ProductDao4MySqlImpl().getAllProduct().get(0).getSalesCount());
	}
	
	@Test
	public void testfindProductByName(){
		List<Product> p = new ProductDao4MySqlImpl().getProductByName(0, "大");
		System.out.println(p.size());
	}
	
	@Test
	public void testGetProductBySum() {
		List<Product> p = new ProductDao4MySqlImpl().getProductBySum();
		System.out.println(p.get(0).getName());
	}

}
