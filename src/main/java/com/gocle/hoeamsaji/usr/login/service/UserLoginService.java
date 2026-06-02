package com.gocle.hoeamsaji.usr.login.service;

import com.gocle.hoeamsaji.adm.login.vo.LoginVO;

public interface UserLoginService {
	
	LoginVO selectUserLogin(LoginVO loginVO) throws Exception;
	
	void insertUser(LoginVO loginVO) throws Exception;
	
}
