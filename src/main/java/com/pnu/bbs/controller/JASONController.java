package com.pnu.bbs.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pnu.bbs.dao.BBSDao;

@RestController
@RequestMapping("/json")
public class JASONController {
	// 여기는 데이터를 공급해주는 용도

	// 사용할 DAO를 객체를 만듬
	@Autowired
	private BBSDao mDAO;

	// http://127.0.0.1:8090/web/json/mlist?key=123
	@RequestMapping(value = "/mlist", method = RequestMethod.GET)
	public List<Map<String, Object>> json(@RequestParam(value = "key", required = false, defaultValue = "0") int key) {
		if (key == 123) {
			// DB에서 오는 값을 JSON문서로 만듬
			List<Map<String, Object>> list = mDAO.selectMemberList();
			return list;
		} else {
			// 에러 처리에 대한 임의의 값으로 만듬
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("ret", "404 page");

			List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
			list.add(map);
			return list;
		}
	}
}  