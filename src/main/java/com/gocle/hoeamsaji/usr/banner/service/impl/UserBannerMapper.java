package com.gocle.hoeamsaji.usr.banner.service.impl;

import java.util.List;

import com.gocle.hoeamsaji.usr.banner.vo.BannerVO;

public interface UserBannerMapper {

	List<BannerVO> bannerList(BannerVO bannerVO)throws Exception;
	
	List<BannerVO> selectPopupList(BannerVO bannerVO)throws Exception;
}
