package com.gocle.hoeamsaji.adm.publication.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.fdl.idgnr.EgovIdGnrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gocle.hoeamsaji.adm.publication.service.AdminPublicationService;
import com.gocle.hoeamsaji.adm.publication.vo.PublicationContentVO;
import com.gocle.hoeamsaji.adm.publication.vo.PublicationVO;
import com.gocle.hoeamsaji.comm.file.service.FileService;

@Service("publicationService")
public class AdminPublicationServiceImpl extends EgovAbstractServiceImpl implements AdminPublicationService {

	@Autowired
	private AdminPublicationMapper publicationMapper;
	
	@Autowired
	FileService fileService;

	@Autowired
	private EgovIdGnrService publicationIdGnrService;

	/**
	 * 발간물 목록 건수
	 */
	@Override
	public int selectPublicationListCnt(PublicationVO vo) throws Exception {
		return publicationMapper.selectPublicationListCnt(vo);
	}

	/**
	 * 발간물 목록 조회
	 */
	@Override
	public List<PublicationVO> selectPublicationList(PublicationVO vo) throws Exception {
		return publicationMapper.selectPublicationList(vo);
	}

	/**
	 * 발간물 상세 조회
	 */
	@Override
	public PublicationVO selectPublicationDetail(PublicationVO vo) throws Exception {

		PublicationVO resultVO = publicationMapper.selectPublicationDetail(vo);

		if(resultVO != null) {
			resultVO.setContentList(
				publicationMapper.selectPublicationContentList(vo)
			);
		}

		return resultVO;
	}

	/**
	 * 발간물 등록
	 */
	@Override
	public String insertPublication(PublicationVO vo, MultipartHttpServletRequest multiRequest) throws Exception {

		String pubId = publicationIdGnrService.getNextStringId();

		vo.setPubId(pubId);
		
		if(multiRequest != null) {
		    List<MultipartFile> thumbFile = multiRequest.getFiles("thumbFile");
		    if(thumbFile != null && !thumbFile.isEmpty() && thumbFile.get(0).getSize() > 0) {
		    	fileService.saveProductThumFile(thumbFile, vo.getPubId(), vo.getSessionMemSeq(), "Globals.thumbnailStorePath","Y");
		    }

		    List<MultipartFile> pdfFile = multiRequest.getFiles("pdfFile");
		    if(pdfFile != null && !pdfFile.isEmpty() && pdfFile.get(0).getSize() > 0) {
		    	fileService.saveProductFile(pdfFile, vo.getPubId(), vo.getSessionMemSeq(), "Globals.fileStorePath", "N");
		    }
		}

		publicationMapper.insertPublication(vo);

		if(vo.getContentList() != null && !vo.getContentList().isEmpty()) {

			for(PublicationContentVO contentVO : vo.getContentList()) {

				contentVO.setPubId(pubId);

				if(contentVO.getContentTitle() == null
						|| "".equals(contentVO.getContentTitle().trim())) {
					continue;
				}

				publicationMapper.insertPublicationContent(contentVO);
			}
		}

		return pubId;
	}

	/**
	 * 발간물 수정
	 */
	@Override
	public int updatePublication(PublicationVO vo, MultipartHttpServletRequest multiRequest) throws Exception {

		if(multiRequest != null) {
		    List<MultipartFile> thumbFile = multiRequest.getFiles("thumbFile");
		    if(thumbFile != null && !thumbFile.isEmpty() && thumbFile.get(0).getSize() > 0) {
		        fileService.saveProductThumFile(thumbFile, vo.getPubId(), vo.getSessionMemSeq(), "Globals.thumbnailStorePath","Y");
		    }

		    List<MultipartFile> pdfFile = multiRequest.getFiles("pdfFile");
		    if(pdfFile != null && !pdfFile.isEmpty() && pdfFile.get(0).getSize() > 0) {
		        fileService.saveProductFile(pdfFile, vo.getPubId(), vo.getSessionMemSeq(), "Globals.fileStorePath", "N");
		    }
		}

		int result = publicationMapper.updatePublication(vo);

		// 기존 목차 삭제
		publicationMapper.deletePublicationContentByPubId(vo);

		// 목차 재등록
		if(vo.getContentList() != null && !vo.getContentList().isEmpty()) {

			for(PublicationContentVO contentVO : vo.getContentList()) {

				contentVO.setPubId(vo.getPubId());

				if(contentVO.getContentTitle() == null
						|| "".equals(contentVO.getContentTitle().trim())) {
					continue;
				}

				publicationMapper.insertPublicationContent(contentVO);
			}
		}

		return result;
	}

	/**
	 * 발간물 삭제
	 */
	@Override
	public int deletePublication(PublicationVO vo) throws Exception {

		publicationMapper.deletePublicationContentByPubId(vo);

		return publicationMapper.deletePublication(vo);
	}

	@Override
	public List<PublicationContentVO> selectPublicationContentList(PublicationVO publicationVO) throws Exception {
		return publicationMapper.selectPublicationContentList(publicationVO);
	}
}