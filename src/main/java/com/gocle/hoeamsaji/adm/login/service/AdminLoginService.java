package com.gocle.hoeamsaji.adm.login.service;

import java.util.Map;

import com.gocle.hoeamsaji.adm.login.vo.LoginVO;

public interface AdminLoginService {

	LoginVO adminLogin(LoginVO loginVO) throws Exception;

	LoginVO staffLogin(LoginVO loginVO) throws Exception;

	Map<String, Object> logonAdmin(LoginVO loginVO) throws Exception;
	
	Map<String, Object> logonStaff(LoginVO loginVO) throws Exception;
}
