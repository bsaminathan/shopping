package com.shopping.song.service.impl;

import java.util.List;

import org.junit.Test;

import com.shopping.song.pojo.SalesItem;


public class SalesItemServiceImplTest {
	@Test
	public void testGetSalesItemsBySalesOrderId() {
		List<SalesItem> salesItems = SalesItemServiceImpl.getInstance().getSalesItemsBySalesOrderId("2012100715438281090");
		for(SalesItem salesItem:salesItems){
			System.out.println(salesItem.getId());
		}
	}
	
	@Test
	public void testAddSalesItem() {
		System.out.println(SalesItemServiceImpl.getInstance().addSalesItem(1, 100, 1, "2012100715438281090"));
	}
	
	@Test
	public void testGetProductSalesCountByPid() {
		System.out.println(SalesItemServiceImpl.getInstance().getProductSalesCountByPid(5));
	}
	
}
