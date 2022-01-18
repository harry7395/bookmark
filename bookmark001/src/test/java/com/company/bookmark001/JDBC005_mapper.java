package com.company.bookmark001;

import java.net.InetAddress;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.mapper.TestMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class JDBC005_mapper {
	
//	@Autowired
//	private BoardMapper boardMapper;
//	
//	@Test
//	public void testSqlSessionFactory() throws Exception {
//		try {
//			System.out.println("............5-1. : "+ boardMapper);
//			
//			//create
//			BoardDto dto = new BoardDto();
//			//bname, bpass, btitle, bcontent, bip
//			dto.setBname("test");
//			dto.setBpass("123");
//			dto.setBtitle("test");
//			dto.setBcontent("test"); // 이거 왜안해..?
//			dto.setBip(InetAddress.getLocalHost().getHostAddress());
//			System.out.println("............5-2. : "+ boardMapper.insert(dto));
//			
//			//list
//			System.out.println("............5-3. : "+ boardMapper.list());
//			
//			//read
//			//select * from mvcboard where bno = #{bno}
//			dto.setBno(1);
//			System.out.println("............5-4. : "+ boardMapper.read(dto));
//			//update_hit
//			System.out.println("............5-5. : "+ boardMapper.update_hit(dto));
//			
////			//update
////			//update mvcboard set btitle=#{btitle}, bcontent=#{bcontent} where bno=#{bno} and bpass=#{bpass}
//			dto.setBtitle("new");
//			dto.setBcontent("new");
//			dto.setBpass("123");
//			System.out.println("............5-6. : "+ boardMapper.update(dto));
//			
//			//delete
//			dto.setBno(1);
//			dto.setBpass("123");
//			System.out.println("............5-7. : "+ boardMapper.delete(dto));
//		}catch(Exception e) {e.printStackTrace();}
//	}
	
}
