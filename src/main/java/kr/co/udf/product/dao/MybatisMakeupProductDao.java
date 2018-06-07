package kr.co.udf.product.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.common.product.domain.StudioProduct;

@Repository
public class MybatisMakeupProductDao implements MakeupProductDao {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.co.udf.product.dao.MakeupProductDao";

	
	@Override
	public void create(MakeupProduct mp) throws Exception {
		session.insert(namespace+".create", mp);
		
	}

	@Override
	public MakeupProduct read(int mp_no) throws Exception {
		return session.selectOne(namespace+".read", mp_no);
	}
	
	@Override
	public void update(MakeupProduct mp) throws Exception {
		session.update(namespace+".update", mp);
		
	}

	@Override
	public void delete(int mp_no) throws Exception {
		session.delete(namespace+".delete", mp_no);
		
	}
	
	@Override
	public List<MakeupProduct> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	
}
