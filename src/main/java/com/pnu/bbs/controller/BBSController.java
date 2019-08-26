package com.pnu.bbs.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pnu.bbs.dao.BBSDao;
import com.pnu.bbs.dto.BBSDto;
import com.pnu.bbs.service.BBSService;

@Controller
public class BBSController {
	@Autowired // 스프링이 지원하는 애노테이션, 타입으로 빈을 찾음
	private BBSService bbsService;

	@RequestMapping("/list.bbs")
	public String list(Model model, BBSDto article, @RequestParam(value = "dong", required = false, defaultValue ="장전2동") String dong) {
		model.addAttribute("articleList", bbsService.list(dong));
		return "list";
	}
	
	@RequestMapping("/template.bbs")
	public String template(Model model,
						   @RequestParam(value = "dong", required = false) String dong, 
						   @RequestParam(value = "gu", required = false) String gu, 
						   @RequestParam(value = "type", required = false) String type) {
		model.addAttribute("dong", dong);
		model.addAttribute("gu", gu);
		model.addAttribute("type", type);
		return "template";
	}
	
	@RequestMapping("/search.bbs")
	public String search() {
		return "search";
	}
	@RequestMapping("/chart.bbs")
	public String chart() {
		return "chart";
	}
	@RequestMapping("/pieChart.bbs")
	public String pieChart() {
		return "pieChart";
	}
	
	@RequestMapping("/dieChart.bbs")
	public String dieChart() {
		return "dieChart";
	}
	
	@RequestMapping("/mlist.bbs")
	public String mlist() {
		return "mlist";
	}
	
	@RequestMapping("/drawingMaps.bbs")
	public String drawingMaps() {
		return "drawingMaps";
	}
	@RequestMapping("/gudong.bbs")
	public String gudong() {
		return "gudong";
	}
	@RequestMapping("/index.bbs")
	public String index() {
		return "index";
	}
	@RequestMapping("/notFound.bbs")
	   public String notfound() {
	      return "notFound"; 
	   }
	
	// -> service로

}
