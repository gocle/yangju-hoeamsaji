package com.gocle.hoeamsaji.usr.introduce.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/usr/introduce/")
public class UserIntroduceController {
	
	@RequestMapping("view.do")
	public String overview(ModelMap model) throws Exception {
		
		return "/usr/introduce/view";
	}
	
	@RequestMapping("history.do")
	public String history(ModelMap model) throws Exception {
		
		return "/usr/introduce/history";
	}
	
	@RequestMapping("info.do")
	public String info(ModelMap model) throws Exception {
		
		return "/usr/introduce/info";
	}
	
	@RequestMapping("site.do")
	public String site(ModelMap model) throws Exception {
		
		return "/usr/introduce/site";
	}
	
	@RequestMapping("unesco.do")
	public String unesco(ModelMap model) throws Exception {
		
		return "/usr/introduce/unesco";
	}
	
	@RequestMapping("system.do")
	public String system(ModelMap model) throws Exception {
		
		return "/usr/introduce/system";
	}
	
	@RequestMapping("korea.do")
	public String korea(ModelMap model) throws Exception {
		
		return "/usr/introduce/korea";
	}
	
	@RequestMapping("promotion.do")
	public String promotion(ModelMap model) throws Exception {
		
		return "/usr/introduce/promotion";
	}
	
	@RequestMapping("publication.do")
	public String publication(ModelMap model) throws Exception {
		
		return "/usr/introduce/publication";
	}
}
