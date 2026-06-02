package com.gocle.hoeamsaji.usr.login.service.impl;

import com.gocle.hoeamsaji.adm.login.vo.LoginVO;

public interface UserLoginMapper {

	LoginVO selectUserLogin(LoginVO loginVO) throws Exception;
	
	void insertUser(LoginVO loginVO) throws Exception;
	
}
