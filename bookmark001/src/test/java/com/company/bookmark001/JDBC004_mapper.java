package com.company.bookmark001;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.mapper.TestMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class JDBC004_mapper {
	
	@Autowired
	private TestMapper testMapper;
	
	@Test
	public void testSqlSessionFactory() throws Exception {
		try {
			System.out.println("............4-1. : "+ testMapper);
			System.out.println("............4-2. : "+ testMapper.test());
		}catch(Exception e) {e.printStackTrace();}
	}
	
}
