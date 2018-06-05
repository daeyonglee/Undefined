package kr.co.udf.product;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.common.product.domain.MakeupProduct;
import kr.co.udf.product.dao.MakeupProductDao;
import oracle.net.aso.d;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class MakeupProductTest {


	Logger logger = Logger.getLogger(MakeupProductTest.class);
	
	@Inject
	MakeupProductDao dao;
	SqlSessionFactory sqlFactory;
	
	//@Test
	public void testCreate() throws Exception {
			MakeupProduct mp = new MakeupProduct();
			mp.setMc_no(2);
			mp.setMc_nm("종로구메이크업");
			mp.setMp_price(50000);
			mp.setMp_acc_yn('Y');
			mp.setMp_family_yn('Y');
			mp.setMp_hair_yn('Y');
			mp.setMp_image("makeup style");
			dao.create(mp);
		}

	  @Test
	public void testRead() throws Exception {
		logger.info(dao.read(1).toString());
	}
	
}
