package kr.co.udf.product.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.product.domain.StudioProduct;

@Repository
public class MybatisStudioProductDao implements StudioProductDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.product.dao.StudioProductDao";

	
	@Override
	public void create(StudioProduct sp) throws Exception {
		session.insert(namespace+".create", sp);
		
	}

	@Override
	public StudioProduct read(int sp_no) throws Exception {
		return session.selectOne(namespace+".read", sp_no);
	}
	
	@Override
	public void update(StudioProduct sp) throws Exception {
		session.update(namespace+".update", sp);
		
	}

	@Override
	public void delete(int sp_no) throws Exception {
		session.delete(namespace+".delete", sp_no);
		
	}

	@Override
	public List<StudioProduct> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	
}
