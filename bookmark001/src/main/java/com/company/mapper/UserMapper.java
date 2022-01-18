package com.company.mapper;

import com.company.dto.UserDto;

public interface UserMapper {
	public Integer login(UserDto dto); //null 
	public int join(UserDto dto);
	public Integer id_dup(UserDto dto); //아이디 중복 검사
	public int pass_check(UserDto dto); //비밀번호 체크
	public UserDto userInfo(UserDto dto); //mypage+edit_view
	public int edit(UserDto dto);
}
