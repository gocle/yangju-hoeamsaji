package com.gocle.hoeamsaji.adm.ip.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gocle.hoeamsaji.adm.ip.vo.IpVO;

@Mapper
public interface AdminIpMapper {

	List<IpVO> selectAccessIpList(IpVO ipVO) throws Exception;

	int insertAccessIp(IpVO ipVO) throws Exception;

	int deleteIp(IpVO ipVO) throws Exception;

	List<String> selectAccessAllIpList() throws Exception;

}
