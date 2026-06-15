package com.gocle.hoeamsaji.usr.publication.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gocle.hoeamsaji.usr.publication.vo.PublicationContentVO;
import com.gocle.hoeamsaji.usr.publication.vo.PublicationVO;

@Mapper
public interface UserPublicationMapper {

	int selectPublicationListCnt(PublicationVO vo);

	List<PublicationVO> selectPublicationList(PublicationVO vo);

	List<PublicationContentVO> selectPublicationContentList(PublicationVO publicationVO);
}
