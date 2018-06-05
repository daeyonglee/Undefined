package kr.co.udf.company;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import kr.co.udf.common.company.domain.StudioCompany;
import kr.co.udf.company.dao.StudioDao;
import kr.co.udf.company.domain.Criteria;
import kr.co.udf.company.domain.SearchCriteria;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
public class StudioTest {

	Logger logger = Logger.getLogger(StudioTest.class);
	
	@Inject
	private StudioDao dao;
	SqlSessionFactory sqlFactory;
	
//	@Test
	public void testList() throws Exception {
		logger.info(dao.listAll());
	}
	
	//@Test
	public void testPage() throws Exception {
		logger.info(dao.listPage(1));
	}
	
	
	//  @Test
	 public void testListCriteria() throws Exception {
		 
		 Criteria cri = new Criteria();
		 cri.setPage(1);
		 cri.setPerPageNum(10);
		 
		 List<StudioCompany> list = dao.listCriteria(cri);
		 
		 for (StudioCompany studio : list) {
			 logger.info(studio.getSc_no() + ":" + studio.getSc_nm());
		 }
	 }
	 
	//@Test
	public void testPageint() throws Exception {
		Criteria cri = new Criteria();
		logger.info(dao.countPaging(cri));
	}
	
	//@Test
	public void testSearch() throws Exception {
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(1);
		cri.setKeyword("이마트");
		cri.setSearchType("name");
	
		List<StudioCompany> list = dao.listSearch(cri);
		for (StudioCompany studio : list) {
			logger.info(studio.getSc_no() + ":" + studio.getSc_main_nm());
		}
		logger.info("개수 :" + dao.listSearchCount(cri));
	}
	
	 //@Test
		public void testURI() throws Exception {
			
			UriComponents uricompo =
					UriComponentsBuilder.newInstance()
					.path("/board/listpage")
					.queryParam("bno", 1)
					.queryParam("perPerNum", 10)
					.build();
			
			logger.info(uricompo.toString());
	}
	
		@Test
		public void testlistALl() throws Exception {
			logger.info(dao.listAll());
		}
	
	
	}
