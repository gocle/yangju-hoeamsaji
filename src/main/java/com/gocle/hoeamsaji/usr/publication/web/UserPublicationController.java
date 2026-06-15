package com.gocle.hoeamsaji.usr.publication.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gocle.hoeamsaji.comm.file.service.FileService;
import com.gocle.hoeamsaji.comm.file.vo.FileVO;
import com.gocle.hoeamsaji.usr.publication.service.UserPublicationService;
import com.gocle.hoeamsaji.usr.publication.vo.PublicationVO;

@Controller
public class UserPublicationController {

	@Autowired
	UserPublicationService userPublicationService;
	
	@Autowired
	FileService fileService;
	/**
	 * 간행물 목록
	 * @param vo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/usr/publication/list.do")
	public String selectPublicationList(@ModelAttribute("form") PublicationVO vo, ModelMap model) throws Exception {

	    List<PublicationVO> list = userPublicationService.selectPublicationList(vo);

	    // 리스트에 대해 각각 파일 매핑
	    for (PublicationVO pub : list) {

	        FileVO thumbVO = new FileVO();
	        thumbVO.setpId(pub.getPubId());
	        thumbVO.setThumbnailCrop("Y");

	        List<FileVO> thumbList = fileService.listProductFile(thumbVO);

	        if (!thumbList.isEmpty()) {
	            pub.setThumbSaveFileName(thumbList.get(0).getSaveFileName());
	            pub.setThumbOrgFileName(thumbList.get(0).getOrgFileName());
	        }

	        FileVO pdfVO = new FileVO();
	        pdfVO.setpId(pub.getPubId());
	        pdfVO.setThumbnailCrop("N");

	        List<FileVO> pdfList = fileService.listProductFile(pdfVO);

	        if (!pdfList.isEmpty()) {
	        	pub.setPubPdfFileId(pdfList.get(0).getAtchFileIdx());
	            pub.setPdfOrgFileName(pdfList.get(0).getOrgFileName());
	            pub.setPdfSaveFileName(pdfList.get(0).getSaveFileName());
	        }
	    }

	    model.addAttribute("resultList", list);

	    return "/usr/publication/list";
	}
	
	@RequestMapping("/usr/publication/viewPdf.do")
	public void viewPdf(@RequestParam String fileId,
	                    HttpServletResponse response) throws Exception {

		
	    FileVO file = new FileVO();
	    file.setAtchFileIdx(fileId);
	    file = fileService.getFile(file);

	    String fullPath = file.getFileSavePath() + File.separator + file.getSaveFileName();

	    File pdf = new File(fullPath);

	    response.setContentType("application/pdf");
	    response.setHeader("Content-Disposition", "inline; filename=" + file.getOrgFileName());

	    try (FileInputStream fis = new FileInputStream(pdf);
	         OutputStream os = response.getOutputStream()) {

	        byte[] buffer = new byte[1024];
	        int len;
	        while ((len = fis.read(buffer)) != -1) {
	            os.write(buffer, 0, len);
	        }
	    }
	}
}
