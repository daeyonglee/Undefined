package kr.co.udf.recommend.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;

@Repository
public class MybatisRecommendDao implements RecommendDao {

	@Inject
	SqlSession session;

	String namespace = "kr.co.udf.recommend.dao.RecommendDao";
	
	@Override
	public List<StudioProduct> recommendStudio(List<String> studioOption) {
		return session.selectList(namespace + ".recommendStudio");
	}

	@Override
	public List<DressProduct> recommendDress(List<String> dressOption) {
		return session.selectList(namespace + ".recommendDress");
	}

	@Override
	public List<MakeupProduct> recommendMakeup(List<String> makeupOption) {
		return session.selectList(namespace + ".recommendMakeup");
	}
}
