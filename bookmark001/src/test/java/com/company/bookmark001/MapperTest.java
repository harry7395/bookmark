package com.company.bookmark001;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.dto.UserDto;
import com.company.mapper.UserMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MapperTest {
	@Autowired
	private UserMapper uMapper;
	
	@Test
	public void test() {
		UserDto udto = new UserDto();
		udto.setUid("abc");
		udto.setUpass("abc");
		udto.setUbirth("0000-00-00");
		udto.setUaddress("abc");
		udto.setUemail("abc");
		udto.setUname("abc");
		udto.setUip("abc");
		udto.setUzipcode("00000");
		udto.setUgender("f");
		udto.setUmkt("y");
		System.out.println(uMapper.join(udto));
	}
}
