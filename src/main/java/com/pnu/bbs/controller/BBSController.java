package com.pnu.bbs.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.pnu.bbs.dao.BBSDao;
import com.pnu.bbs.dto.BBSDto;
import com.pnu.bbs.service.BBSService;

@Controller
public class BBSController {
	@Autowired 
	private BBSService bbsService;
	private BBSDao mDAO;

	@RequestMapping("/list.bbs")
	public String list(Model model, BBSDto article, @RequestParam(value = "dong", required = false, defaultValue ="구서동") String dong) {
		model.addAttribute("articleList", bbsService.list(dong));
		return "list";
	}
	@RequestMapping("/index.bbs")
	public String index() {
		return "index";
	}

	@RequestMapping("/yes.bbs")
	public String yes() {
		return "yes";
	}
	
	@RequestMapping("/template.bbs")
	public String template() {
		return "template";
	}
	@RequestMapping("/search.bbs")
	public String search() {
		return "search";
	}
	@RequestMapping("/chart.bbs")
	public String ajax() {
		return "chart";
	}
	
	@RequestMapping("/mlist.bbs")
	public String mlist() {
		return "mlist";
	}

	// -> service濡�

}
