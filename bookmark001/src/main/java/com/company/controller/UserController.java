package com.company.controller;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.dto.UserDto;
import com.company.service.UserService;

@Controller
@RequestMapping("/account/*")
public class UserController {
	@Autowired
	private UserService service;
	
	//로그인 폼 : GET, /account/login_view
	@RequestMapping(value="/login", method= RequestMethod.GET) 
	public String login_view() { return "/account/login"; }
	//로그인 기능 : POST, /account/login
	@RequestMapping(value="/login", method= RequestMethod.POST) 
	public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		Integer result = service.login(request, response);
		
		if(result!=null) {
			out.println("<script>location.href='"+request.getContextPath()+"/main.do';</script>");
		} else {
			out.println("<script>alert('아이디 또는 비밀번호를 확인해주세요'); history.go(-1);</script>");
		}
	}
	//로그아웃 기능 : GET, /account/logout
	@RequestMapping(value="/logout", method= RequestMethod.GET) 
	public String logout(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		session.invalidate();
//		out.println("<script> location.href='"+ request.getContextPath() +"/main.do';</script>");
		return "redirect:/main.do";
	}
	
	//회원가입 폼 : GET, /account/join_view
	@RequestMapping(value="/join", method= RequestMethod.GET) 
	public String join_view() { return "/account/join"; }
	//회원가입 기능 : POST, /account/join
	@RequestMapping(value="/join", method= RequestMethod.POST) 
	public void join(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int result = service.join(request);
		if(result > 0) {
			out.println("<script> alert('회원가입이 완료되었습니다.'); location.href='"+request.getContextPath()+"/main.do'; </script>");
		} else { out.println("<script> alert('관리자에게 문의바랍니다.'); history.go(-1); </script>");}
	}
	//아이디 중복체크
	@RequestMapping(value="/id_dup", method= RequestMethod.POST)
	public void id_dup(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		service.id_dup(request, response);
	}
	//비밀번호 확인 뷰
	@RequestMapping(value="/pass_check", method= RequestMethod.GET)
	public String pass_check_view() { return "/account/pass_check"; }
	
	//비밀번호 확인 기능
	@RequestMapping(value="/pass_check", method=RequestMethod.POST)
	public void pass_check(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		Integer result = service.pass_check(request);
		if(result!=null) {out.println("<script> location.href='"+request.getContextPath()+"/account/edit'; </script>");
		} else { out.println("<script> alert('비밀번호를 확인해주세요'); history.go(-1); </script>");}
	}
	
	//마이페이지 : GET, /account/mypage
	@RequestMapping(value="/mypage", method= RequestMethod.GET) 
	public String mypage(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		UserDto dto = service.userInfo(request);
		request.setAttribute("dto", dto);
		
		return "/account/mypage";
	}
	//회원정보 수정 폼 : GET, /account/edit_view
	@RequestMapping(value="/edit", method= RequestMethod.GET) 
	public String edit_view(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		UserDto dto = service.userInfo(request);
		request.setAttribute("dto", dto);
		
		return "/account/edit_userinfo";
	}
	//회원정보 수정 기능 : POST, /account/edit
	@RequestMapping(value="/edit", method= RequestMethod.POST) 
	public String edit() {
		return "/account/edit";
	}
}
