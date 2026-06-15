package com.gocle.hoeamsaji.adm.publication.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gocle.hoeamsaji.adm.publication.vo.PublicationContentVO;
import com.gocle.hoeamsaji.adm.publication.vo.PublicationVO;

public interface AdminPublicationService {

	/**
	 * 발간물 목록 건수
	 */
	int selectPublicationListCnt(PublicationVO vo) throws Exception;

	/**
	 * 발간물 목록
	 */
	List<PublicationVO> selectPublicationList(PublicationVO vo) throws Exception;

	/**
	 * 발간물 상세
	 */
	PublicationVO selectPublicationDetail(PublicationVO vo) throws Exception;

	/**
	 * 발간물 등록
	 * @param multiRequest 
	 */
	String insertPublication(PublicationVO vo, MultipartHttpServletRequest multiRequest) throws Exception;

	/**
	 * 발간물 수정
	 * @param multiRequest 
	 */
	int updatePublication(PublicationVO vo, MultipartHttpServletRequest multiRequest) throws Exception;

	/**
	 * 발간물 삭제
	 */
	int deletePublication(PublicationVO vo) throws Exception;

	/**
	 * 목차 
	 */
	List<PublicationContentVO> selectPublicationContentList(PublicationVO publicationVO) throws Exception;

}