package com.pnu.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pnu.bbs.dao.BBSDao;
import com.pnu.bbs.dto.BBSDto;



@Service
public class BBSServiceImpl implements BBSService {
	@Autowired
	private BBSDao bbsDao;

//	@Autowired는 타입으로 찾지만 String이 여러개 있더라도 servlet-context에 이름을 같게  적었다면 알아서 찾아짐 (최신 4.0~)
//	@Resource는 빈의 이름으로 찾음

	@Override
	public List<BBSDto> list(String dong)  {
		//System.out.println(saveDir);
		return bbsDao.list(dong);		
	}
	// 트랜잭션 처리는 서비스단에서 처리한다.

	
}
//  -> DAO로

