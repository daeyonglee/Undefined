package kr.co.udf.user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.common.product.domain.DressProduct;
import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.user.domain.DressProductDTO;
import kr.co.udf.user.domain.Login;
import kr.co.udf.user.domain.MakeupProductDTO;
import kr.co.udf.user.domain.StudioProduct;
import kr.co.udf.user.domain.StudioProductDTO;

@Repository
public class MybatisMypageProductDao implements MypageProductDao {

	@Inject
	private SqlSession session;
	
	private static String NAMESPACE = "kr.co.udf.user.dao.MypageProductDao";
	

	@Override
	public List<DressProduct> plistDp(Login login) {
		return session.selectList(NAMESPACE+".plistDc", login);
	}

	@Override
	public List<StudioProduct> plistSp(Login login) {
		return session.selectList(NAMESPACE+".plistSc", login);
	}

	@Override
	public List<MakeupProduct> plistMp(Login login) {
		return session.selectList(NAMESPACE+".plistMc", login);
	}

	@Override
	public void writedc(DressProductDTO product, String fileName) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("product", product);
		map.put("fileName", fileName);
		
		session.insert(NAMESPACE+".writedc", map);
	}
	
	@Override
	public void writesc(StudioProductDTO product, String fileName) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("product", product);
		map.put("fileName", fileName);
		
		session.insert(NAMESPACE+".writesc", map);
		
	}

	@Override
	public void writemc(MakeupProductDTO product, String fileName) {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("product", product);
		map.put("fileName", fileName);
		
		session.insert(NAMESPACE+".writemc", map);
		
	}
}
