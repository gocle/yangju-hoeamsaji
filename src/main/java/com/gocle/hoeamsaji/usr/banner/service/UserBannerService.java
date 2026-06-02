package com.gocle.hoeamsaji.usr.banner.service;

import java.util.List;

import com.gocle.hoeamsaji.usr.banner.vo.BannerVO;

public interface UserBannerService {

	List<BannerVO> bannerList(BannerVO bannerVO)throws Exception; 

}
