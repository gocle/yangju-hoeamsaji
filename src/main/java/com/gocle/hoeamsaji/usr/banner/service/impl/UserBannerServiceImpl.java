package com.gocle.hoeamsaji.usr.banner.service.impl;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.fdl.idgnr.EgovIdGnrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gocle.hoeamsaji.comm.file.service.FileService;
import com.gocle.hoeamsaji.usr.banner.service.UserBannerService;
import com.gocle.hoeamsaji.usr.banner.vo.BannerVO;


@Service
public class UserBannerServiceImpl extends EgovAbstractServiceImpl implements UserBannerService {

	@Autowired
	UserBannerMapper userBannerMapper;
	
	@Override
	public List<BannerVO> bannerList(BannerVO bannerVO) throws Exception {
		
		List<BannerVO> data = userBannerMapper.bannerList(bannerVO);
		
		return data;
	}

}
