package com.gocle.hoeamsaji.adm.publication.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gocle.hoeamsaji.adm.publication.service.AdminPublicationService;
import com.gocle.hoeamsaji.adm.publication.vo.PublicationVO;
import com.gocle.hoeamsaji.comm.file.service.FileService;
import com.gocle.hoeamsaji.comm.file.vo.FileVO;
import com.gocle.hoeamsaji.comm.vo.LoginInfo;

@Controller
@RequestMapping("/adm/publication/")
public class AdminPublicationController {
	
	@Autowired
	AdminPublicationService adminPublicationService;
	
	@Autowired
	FileService fileService;

	/**
	 * 발간물 조회
	 * @param publicationVO
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("listPublication.do")
	public String listPublication(
	        PublicationVO publicationVO,
	        HttpServletRequest request,
	        ModelMap model) throws Exception {

	    if (publicationVO.getPageIndex() == 0) {
	        publicationVO.setPageIndex(1);
	    }

	    String menuId = publicationVO.getMenuId();
	    PaginationInfo paginationInfo = new PaginationInfo();

	    paginationInfo.setCurrentPageNo(publicationVO.getPageIndex());
	    paginationInfo.setRecordCountPerPage(publicationVO.getRecordCountPerPage());
	    paginationInfo.setPageSize(publicationVO.getPageSize());

	    publicationVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	    publicationVO.setLastIndex(paginationInfo.getLastRecordIndex());

	    int totalCount = adminPublicationService.selectPublicationListCnt(publicationVO);

	    paginationInfo.setTotalRecordCount(totalCount);

	    List<PublicationVO> publicationList = adminPublicationService.selectPublicationList(publicationVO);

	    model.addAttribute("menuId", menuId);
	    model.addAttribute("publicationVO", publicationVO);
	    model.addAttribute("publicationList", publicationList);
	    model.addAttribute("paginationInfo", paginationInfo);

	    return "adm/publication/listPublication";
	}
	
	/**
	 * 발간물 입력폼
	 * @param publicationVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("insertForm.do")
	public String publicationInsertForm(PublicationVO publicationVO, ModelMap model) throws Exception {

		String menuId = publicationVO.getMenuId();
		
		model.addAttribute("menuId", menuId);
	    model.addAttribute("form", publicationVO);

	    return "/adm/publication/form";
	}
	
	/**
	 * 발간물 등록
	 * @param publicationVO
	 * @param redirectAttributes
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("insert.do")
	public String insertPublication(
	        @ModelAttribute("form") PublicationVO publicationVO,
	        RedirectAttributes redirectAttributes,
	        HttpServletRequest request,
	        final MultipartHttpServletRequest multiRequest,
	        ModelMap model) throws Exception {

	    LoginInfo loginInfo = new LoginInfo();
	    loginInfo.putSessionToVo(publicationVO);

	    String menuId = publicationVO.getMenuId();
	    String pubId = adminPublicationService.insertPublication(publicationVO, multiRequest);

	    String retMsg = (pubId != null && !"".equals(pubId))
	            ? "등록되었습니다."
	            : "등록할 수 없습니다.";

	    model.addAttribute("menuId", menuId);
	    redirectAttributes.addFlashAttribute("retMsg", retMsg);

	    return "redirect:/adm/publication/listPublication.do";
	}
	
	/**
	 * 발간물 수정 폼
	 * @param publicationVO
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("updateForm.do")
	public String updateForm( @ModelAttribute("form") PublicationVO publicationVO, ModelMap model) throws Exception {

		String menuId = publicationVO.getMenuId();
	    PublicationVO publicationResult = adminPublicationService.selectPublicationDetail(publicationVO);
	    publicationResult.setContentList(adminPublicationService.selectPublicationContentList(publicationVO));
	    
	    FileVO fileVO = new FileVO();
	    fileVO.setpId(publicationResult.getPubId());

	    fileVO.setThumbnailCrop("Y");
	    List<FileVO> thumbFileList = fileService.listProductFile(fileVO);

	    fileVO.setThumbnailCrop("N");
	    List<FileVO> pdfFileList = fileService.listProductFile(fileVO);

	    model.addAttribute("menuId", menuId);
	    model.addAttribute("publicationResult", publicationResult);
	    model.addAttribute("thumbFileList", thumbFileList);
	    model.addAttribute("pdfFileList", pdfFileList);

	    return "adm/publication/form";
	}
	
	/**
	 * 발간물 수정
	 * @param publicationVO
	 * @param redirectAttributes
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("update.do")
	public String updatePublication(@ModelAttribute("form") PublicationVO publicationVO, RedirectAttributes redirectAttributes, final MultipartHttpServletRequest multiRequest, ModelMap model) throws Exception {

		String menuId = publicationVO.getMenuId();
		LoginInfo loginInfo = new LoginInfo();
		loginInfo.putSessionToVo(publicationVO);

		int result = adminPublicationService.updatePublication(publicationVO, multiRequest);

		model.addAttribute("menuId", menuId);
		redirectAttributes.addFlashAttribute("retMsg", "수정되었습니다.");

		return "redirect:/adm/publication/updateForm.do?pubId=" + publicationVO.getPubId() + "&menuId=" + menuId;
	}
	
	/**
	 * 발간물 삭제
	 * @param publicationVO
	 * @param redirectAttributes
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("delete.do")
	public String deletePublication(@ModelAttribute("form") PublicationVO publicationVO, RedirectAttributes redirectAttributes, ModelMap model) throws Exception {

		String menuId = publicationVO.getMenuId();
		LoginInfo loginInfo = new LoginInfo();
		loginInfo.putSessionToVo(publicationVO);

		adminPublicationService.deletePublication(publicationVO);

		model.addAttribute("menuId", menuId);
		redirectAttributes.addFlashAttribute("retMsg", "삭제되었습니다.");

		return "redirect:/adm/publication/listPublication.do?menuId=" + menuId;
	}
}
