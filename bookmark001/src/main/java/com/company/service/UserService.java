package com.company.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dto.UserDto;

public interface UserService {
	public Integer login(HttpServletRequest request, HttpServletResponse response) throws Exception; //null 
	public int join(HttpServletRequest request) throws Exception;
	public void id_dup(HttpServletRequest request, HttpServletResponse response) throws Exception; //아이디 중복 검사
	public Integer pass_check(HttpServletRequest request) throws Exception; //비밀번호 체크
	public UserDto userInfo(HttpServletRequest request) throws Exception; //mypage + edit_view
	public int edit();
}
