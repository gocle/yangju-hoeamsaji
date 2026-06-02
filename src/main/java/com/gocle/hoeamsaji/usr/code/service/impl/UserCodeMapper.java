package com.gocle.hoeamsaji.usr.code.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gocle.hoeamsaji.usr.code.vo.CodeVO;

@Mapper
public interface UserCodeMapper {

	List<CodeVO> codeList(CodeVO codeVO);

}
