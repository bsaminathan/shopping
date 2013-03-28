package com.shopping.song.service.impl;

import java.util.List;

import org.junit.Test;

import com.shopping.song.pojo.SalesItem;
import com.shopping.song.pojo.SalesOrder;
import com.shopping.util.NameUtil;


public class SalesOrderServiceImplTest {
	@Test
	public void testGetSalesOrdersByUid() {
		List<SalesOrder> salesOrders = SalesOrderServiceImpl.getInstance().getSalesOrdersByUid(1, 1, 5);
		for(SalesOrder salesOrder:salesOrders) {
			System.out.println(salesOrder.getId());
		}
	}
	
	@Test
	public void testDeleteSalesOrderById() {
		SalesOrderServiceImpl.getInstance().deleteSalesOrderById("201209240001");
	}
	
	@Test
	public void testGetSalesOrderById() {
		SalesOrder salesOrder = SalesOrderServiceImpl.getInstance().getSalesOrderById("201209240002");
		System.out.println(salesOrder.getPhone());
//		List<SalesItem> salesItems = salesOrder.getSalesItems();
//		for(SalesItem salesItem:salesItems) {
//			System.out.println(salesItem.getId());
//		}
	}
	
	@Test
	public void testAddSalesOrder() {
		int result = SalesOrderServiceImpl.getInstance().addSalesOrder("201209240001", 1, 700, "夏天", "马鞍山", 241000, "18070516137", 1, 1, 1, 1,"求不坑");
		System.out.println(result);
	}
	
	@Test
	public void testAlterSalesOrder() {
		int result = SalesOrderServiceImpl.getInstance().alterSalesOrder("201209240002", 800);
		System.out.println(result);
	}
	
	@Test
	public void testGetCount(){
		System.out.println(SalesOrderServiceImpl.getInstance().getSalesOrdersCount4User(1));
	}
}
