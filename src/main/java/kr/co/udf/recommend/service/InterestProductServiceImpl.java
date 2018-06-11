package kr.co.udf.recommend.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import kr.co.udf.recommend.dao.InterestProductDao;
import kr.co.udf.recommend.dao.MybatisInterestProductDao;

@Service
public class InterestProductServiceImpl implements InterestProductService {
	
	Logger logger = Logger.getLogger(MybatisInterestProductDao.class);
	
	@Inject
	InterestProductDao dao;

	@Override
	public List<Map<String, Object>> getSIPList(BigDecimal user_no) {
		return dao.getSIPList(user_no);
	}

	@Override
	public List<Map<String, Object>> getDIPList(BigDecimal user_no) {
		return dao.getDIPList(user_no);
	}

	@Override
	public List<Map<String, Object>> getMIPList(BigDecimal user_no) {
		return dao.getMIPList(user_no);
	}
	
}
