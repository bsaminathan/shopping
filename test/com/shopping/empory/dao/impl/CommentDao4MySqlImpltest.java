package com.shopping.empory.dao.impl;

import java.util.List;

import org.junit.Test;

import com.shopping.empory.pojo.Comment;

public class CommentDao4MySqlImpltest {

	@Test
	public void testgetCommentByProduct() {
		List<Comment> c = new CommentDao4MySqlImpl().getCommentByProductid(1);
		System.out.println(c.get(0).getContent());
	}

}
