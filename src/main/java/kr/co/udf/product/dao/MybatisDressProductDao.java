package kr.co.udf.product.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.StudioProduct;

@Repository
public class MybatisDressProductDao implements DressProductDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.product.dao.DressProductDao";

	
	@Override
	public void create(DressProduct dp) throws Exception {
		session.insert(namespace+".create", dp);
		
	}

	@Override
	public DressProduct read(int dp_no) throws Exception {
		return session.selectOne(namespace+".read", dp_no);
	}

	@Override
	public void update(DressProduct dp) throws Exception {
		session.update(namespace+".update", dp);
		
	}

	@Override
	public void delete(int dp_no) throws Exception {
		session.delete(namespace+".delete", dp_no);
		
	}

	@Override
	public List<DressProduct> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
	
}
