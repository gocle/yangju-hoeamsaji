package com.gocle.hoeamsaji.usr.publication.service.impl;

import java.util.List;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gocle.hoeamsaji.comm.file.service.FileService;
import com.gocle.hoeamsaji.usr.publication.service.UserPublicationService;
import com.gocle.hoeamsaji.usr.publication.vo.PublicationContentVO;
import com.gocle.hoeamsaji.usr.publication.vo.PublicationVO;


@Transactional(rollbackFor=Exception.class)
@Service
public class UserPublicationServiceImpl extends EgovAbstractServiceImpl implements UserPublicationService {

	@Autowired
	private UserPublicationMapper publicationMapper;
	
	@Autowired
	FileService fileService;
	
	@Override
	public int selectPublicationListCnt(PublicationVO vo) throws Exception {
		return publicationMapper.selectPublicationListCnt(vo);
	}

	/**
	 * 발간물 목록 조회
	 */
	@Override
    public List<PublicationVO> selectPublicationList(PublicationVO vo) throws Exception {

        List<PublicationVO> list = publicationMapper.selectPublicationList(vo);

        for (PublicationVO pub : list) {
            pub.setContentList(
            	publicationMapper.selectPublicationContentList(pub)
            );
        }

        return list;
    }

	@Override
	public List<PublicationContentVO> selectPublicationContentList(PublicationVO publicationVO) throws Exception {
		return publicationMapper.selectPublicationContentList(publicationVO);
	}


}
