package com.gocle.hoeamsaji.usr.publication.service;

import java.util.List;

import com.gocle.hoeamsaji.usr.publication.vo.PublicationContentVO;
import com.gocle.hoeamsaji.usr.publication.vo.PublicationVO;


public interface UserPublicationService {

	/**
	 * 발간물 목록 건수
	 */
	int selectPublicationListCnt(PublicationVO vo) throws Exception;

	/**
	 * 발간물 목록
	 */
	List<PublicationVO> selectPublicationList(PublicationVO vo) throws Exception;
	
	List<PublicationContentVO> selectPublicationContentList(PublicationVO vo) throws Exception;
}
