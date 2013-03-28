package com.shopping.liao.dao.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.shopping.empory.pojo.Product;
import com.shopping.liao.pojo.Ad;
import com.shopping.liao.pojo.Favorite;
import com.shopping.liao.service.impl.AdServiceImpl;
import com.shopping.liao.service.impl.FavoriteServiceImpl;
import com.shopping.liao.service.impl.UserServiceImpl;

public class T {

	@Test
	public void testFunctions() {
		List<Product> products = (List<Product>)FavoriteServiceImpl.getInstance().getFavoriteByUserid(1);
		for (Product product : products) {
			System.out.println(product.getName());
		}
	}

}
