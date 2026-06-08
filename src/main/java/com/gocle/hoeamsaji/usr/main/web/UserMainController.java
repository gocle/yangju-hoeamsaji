package com.gocle.hoeamsaji.usr.main.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gocle.hoeamsaji.usr.banner.service.UserBannerService;
import com.gocle.hoeamsaji.usr.banner.vo.BannerVO;
import com.gocle.hoeamsaji.usr.board.service.UserBoardService;
import com.gocle.hoeamsaji.usr.board.vo.BoardArticleVO;
import com.gocle.hoeamsaji.usr.code.service.UserCodeService;
import com.gocle.hoeamsaji.usr.code.vo.CodeVO;

@Controller
public class UserMainController{

	private static final Logger LOG = LoggerFactory.getLogger(UserMainController.class);
	
	@Autowired
	UserBoardService boardService;
	
	@Autowired
	private UserBannerService bannerService;
	
	@Autowired
	UserCodeService codeService;
	
	/**
	 * 메인(index)
	 */
	@RequestMapping(value = "index.do")
	public String index() throws Exception {
		return "redirect:/usr/main.do";
	}
			
	/**
	 * 메인
	 * @param discussVO
	 * @return DiscussVO
	 * @throws Exception
	 */
	@RequestMapping(value = "usr/main.do")
	public String main(
			ModelMap model,
			HttpServletRequest request,
			HttpSession session) throws Exception {
		
		// 메인 게시판
		BoardArticleVO boardArticleVO = new BoardArticleVO();
		boardArticleVO.setBaNotice("0");
		
		// 공지사항
		boardArticleVO.setBcId("notice");
		model.put("topNoticeList", boardService.topNoticeList(boardArticleVO));
		model.put("noticList", boardService.listBoardArticle(boardArticleVO));
		
		// 자료실
		boardArticleVO.setBcId("photo");
		model.put("photoList", boardService.listBoardArticle(boardArticleVO));
		
		// 팝업
		BannerVO bannerVO = new BannerVO();
		model.put("popupList", bannerService.selectPopupList(bannerVO));
		
		return "usr/main/main";
	}
	
	
	@RequestMapping(value = "usr/main/myReservation.do")
	public String myReservation(
			ModelMap model,
			HttpServletRequest request,
			HttpSession session,@RequestParam Map<String,Object> params) throws Exception {
		
		String returnPage = "";
		
		returnPage = "usr/main/myReservation";
		
		model.addAttribute("retMsg", params.get("retMsg"));
		
		return returnPage;
	}
	
	@RequestMapping(value = "usr/main/myReservationView.do")
	public String myReservationView(
			ModelMap model,
			HttpServletRequest request,
			HttpSession session) throws Exception {
		
		String returnPage = "";
		
		returnPage = "usr/main/myReservationView";
		
		return returnPage;
	}
	
}
