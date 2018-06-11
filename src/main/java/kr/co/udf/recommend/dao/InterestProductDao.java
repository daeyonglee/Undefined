package kr.co.udf.recommend.dao;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

public interface InterestProductDao {

	public List<Map<String, Object>> getSIPList(BigDecimal user_no);

	public List<Map<String, Object>> getDIPList(BigDecimal user_no);
	
	public List<Map<String, Object>> getMIPList(BigDecimal user_no);
}
