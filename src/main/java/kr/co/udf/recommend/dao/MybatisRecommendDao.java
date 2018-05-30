package kr.co.udf.recommend.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisRecommendDao implements RecommendDao {

	@Inject
	SqlSession session;
}
