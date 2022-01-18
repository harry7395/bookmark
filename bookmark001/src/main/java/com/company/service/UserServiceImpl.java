package com.company.service;

import java.io.PrintWriter;
import java.net.InetAddress;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.UserDto;
import com.company.mapper.UserMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public Integer login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		UserDto dto = new UserDto(); 
		String remember = request.getParameter("Re");
		dto.setUid(request.getParameter("userid"));
		dto.setUpass(request.getParameter("userpass"));
		
		if(remember!=null){
			Cookie id = new Cookie("userid", dto.getUid());
			Cookie re = new Cookie("remember", remember);
	 		response.addCookie(id);
	 		response.addCookie(re);
		}else{
			String isCookie = request.getHeader("Cookie");
			if(isCookie!=null){
				Cookie[] cookies = request.getCookies();
				for(int i=0;i<cookies.length;i++){
					if( cookies[i].getName().equals("remember")){ 
						cookies[i].setMaxAge(0); response.addCookie(cookies[i]);}
					if( cookies[i].getName().equals("userid")){ 
						cookies[i].setMaxAge(0); response.addCookie(cookies[i]);}
				}
			}
		}
		Integer result = userMapper.login(dto);
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("userid", dto.getUid());
		}
		return result;
	}

	@Override
	public int join(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		UserDto dto = new UserDto();
		
		dto.setUid(request.getParameter("id"));
		dto.setUpass(request.getParameter("pass"));
		dto.setUemail(request.getParameter("email"));
		dto.setUname(request.getParameter("name"));
		dto.setUbirth(request.getParameter("birth"));
		dto.setUgender(request.getParameter("gender"));
		dto.setUzipcode(request.getParameter("zonecode"));
		dto.setUaddress(request.getParameter("address1")+" "+request.getParameter("address2"));
		dto.setUip(InetAddress.getLocalHost().getHostAddress());
		String mkt = request.getParameter("list2");
		if(mkt == null) { mkt = "N"; } dto.setUmkt(mkt);
		
		return userMapper.join(dto);
	}

	@Override
	public void id_dup(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		UserDto dto = new UserDto();
		PrintWriter out = response.getWriter();
		
		//파라미터로 받아오기
		dto.setUid(request.getParameter("id"));
		Integer uno = userMapper.id_dup(dto);
		JsonObject obj = new JsonObject();
		
		obj.addProperty("uno", uno);
		String json = new Gson().toJson(obj);
		out.println(json);
	}

	@Override
	public Integer pass_check(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		UserDto dto = new UserDto();
		HttpSession session = request.getSession();
		dto.setUid((String)session.getAttribute("userid"));
		dto.setUpass(request.getParameter("password"));
		
		return userMapper.pass_check(dto);
	}

	@Override
	public UserDto userInfo(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		UserDto dto = new UserDto();
		HttpSession session = request.getSession();
		dto.setUid((String)session.getAttribute("userid"));
		
		return userMapper.userInfo(dto);
	}

	@Override
	public int edit() {
		
		return 0;
	}

}
