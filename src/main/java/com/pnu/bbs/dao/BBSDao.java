package com.pnu.bbs.dao;

import java.util.List;
import java.util.Map;

import com.pnu.bbs.dto.BBSDto;

public interface BBSDao {
	public List<BBSDto> list(String dong);
	public List<Map<String, Object>> selectMemberList();
}
