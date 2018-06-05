package kr.co.udf.recommend;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.mysql.MySqlJdbcTest;
import kr.co.udf.recommend.dao.RecommendDao;
import kr.co.udf.recommend.service.RecommendService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class RecommendDaoTest {

	private static final Logger logger = Logger.getLogger(MySqlJdbcTest.class);
	
	@Inject
	RecommendDao dao;
	
	@Inject
	RecommendService service;
	
	/*//@Test
	public void readStudioTest() {
		List<StudioProduct> list = dao.readStudio();
		for(StudioProduct sp: list) {
			logger.info(sp.toString());
		}
	}
	
	//@Test
	public void readDressTest() {
		List<DressProduct> list = dao.readDress();
		for(DressProduct sp: list) {
			logger.info(sp.toString());
		}
	}
	
	//@Test
	public void readMakeupTest() {
		List<MakeupProduct> list = dao.readMakeup();
		for(MakeupProduct sp: list) {
			logger.info(sp.toString());
		}
	}*/
	
	//@Test
	public void recommendServiceTest() {
		
	}
}
