package com.company.bookmark001;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;


public class JDBC001 {

	@Test
	public void testConnection() throws Exception{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					
					"jdbc:mysql://localhost:3306/mdb012?useSSL=false","root","1234");
			if(conn!=null) { System.out.println("..............1: " + conn);}
		}catch(Exception e) {e.printStackTrace();}
	}
	
}
