package kr.co.udf.recommend.service;

import java.util.Map;

public interface RecommendService {
	
	public Map<String, Object> recommend(Map<String, Object> params);
}
