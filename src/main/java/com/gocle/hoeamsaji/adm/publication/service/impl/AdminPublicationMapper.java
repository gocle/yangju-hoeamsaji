package com.gocle.hoeamsaji.adm.publication.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gocle.hoeamsaji.adm.publication.vo.PublicationContentVO;
import com.gocle.hoeamsaji.adm.publication.vo.PublicationVO;

@Mapper
public interface AdminPublicationMapper {

	int selectPublicationListCnt(PublicationVO vo);

	List<PublicationVO> selectPublicationList(PublicationVO vo);

	PublicationVO selectPublicationDetail(PublicationVO vo);

	int insertPublication(PublicationVO vo);

	int updatePublication(PublicationVO vo);

	int deletePublication(PublicationVO vo);

	List<PublicationContentVO> selectPublicationContentList(PublicationVO vo);

	int insertPublicationContent(PublicationContentVO vo);

	int deletePublicationContentByPubId(PublicationVO vo);

}