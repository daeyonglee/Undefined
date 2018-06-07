package kr.co.udf.company;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.common.company.domain.DressCompany;
import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.dao.DressDao;
import kr.co.udf.company.dao.StudioDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class DressTest {

	Logger logger = Logger.getLogger(DressTest.class);
	
	@Inject
	private DressDao dao;
	SqlSessionFactory sqlFactory;
	
	//@Test
	public void testList() throws Exception {
		logger.info(dao.listDress());
	}
	
	// @Test
	 public void testListCriteria() throws Exception {
		 
		 Criteria cri = new Criteria();
		 cri.setPage(1);
		 cri.setPerPageNum(10);
		 
		 List<DressCompany> list = dao.DressCri(cri);
		 
		 for (DressCompany studio : list) {
			 logger.info(studio.getDc_addr() + ":" + studio.getDc_nm());
		 }
	 }
	 
	//@Test
	public void testPageint() throws Exception {
		Criteria cri = new Criteria();
		logger.info(dao.DressCount(cri));
	}
	
	@Test
	public void testSearch() throws Exception {
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(1);
		cri.setKeyword("아르하쿠튀르");
		cri.setSearchType("name");
	
		List<DressCompany> list = dao.DressSearch(cri);
		for (DressCompany dress : list) {
			logger.info(dress.getDc_no() + ":" + dress.getDc_main_nm());
		}
		logger.info("개수 :" + dao.DressSearchCount(cri));
	}
}
