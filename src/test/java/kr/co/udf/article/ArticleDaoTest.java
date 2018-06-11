package kr.co.udf.article;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import kr.co.udf.article.dao.ArticleDao;
import kr.co.udf.article.domain.Article;
import kr.co.udf.article.domain.Criteria;
import kr.co.udf.article.domain.SearchCriteria;
import kr.co.udf.board.BoardDaoTest;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml",
							"file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class ArticleDaoTest {
  @Inject
  private ArticleDao dao;
  
  @Inject
  SqlSession sqlSession;//db에 쿼리 날려주는 대행자.
  

  private static final String namespace = "kr.co.udf.article.dao.ArticleDao";

  private static final Logger logger = Logger.getLogger(BoardDaoTest.class);

//  @Test
  public void testCreate(){
    Article article = new Article();
    article.setBoard_no(1);
    article.setUser_no(1);
    article.setArticle_head("Makeup");
    article.setArticle_title("게시글 제목3");
    article.setArticle_content("게시글 내용3");
    try {
		dao.create(article);
	} catch (Exception e) {
		logger.info("오류: " + e.toString());
		System.out.println("오류: " + e.toString());
	}
  }
  
//  @Test
  public void testRead() throws Exception {
	logger.debug("==================== Article 조회(서브쿼리) ========================");
	Map<String, Object> list = dao.read(1);
	//logger.debug(list);
		// 숫자형은 BigDecimal로 받음
		BigDecimal article_no = (BigDecimal) list.get("article_no");
		BigDecimal hitcount = (BigDecimal) list.get("hitcount");
		String article_head = (String) list.get("article_head");
		String article_title = (String) list.get("article_title");
		String article_content = (String) list.get("article_content");
		String user_nm = (String) list.get("user_nm");
		String regdate = (String) list.get("regdate");
		
		logger.debug(article_no + "\t" + article_head + "\t" + article_title +  "\t" + article_content+ "\t" + user_nm+ "\t" + hitcount);
  }

  //@Test
  public void testUpdate() throws Exception {
    Article article = new Article();
    article.setArticle_no(1);
    article.setArticle_head("Dress");
    article.setArticle_title("수정된 게시글 제목2");
    article.setArticle_content("수정된 게시글 내용2");
    dao.update(article);
  }

  //@Test
  public void testDelete() throws Exception {
    dao.delete(2);
  }

// @Test
  public void testListAll() throws Exception {
		logger.debug("==================== 부서명 포함 전체사원 조회(조인) ========================");
		List<Map<String, Object>> list = dao.listAll(1);
		for (Map<String, Object> row : list) {
			// 숫자형은 BigDecimal로 받음
			BigDecimal article_no = (BigDecimal) row.get("article_no");
			BigDecimal hitcount = (BigDecimal) row.get("hitcount");
			String article_head = (String) row.get("head");
			String article_title = (String) row.get("article_title");
			String article_content = (String) row.get("article_content");
			String user_nm = (String) row.get("user_nm");
			String regdate = (String) row.get("regdate");
			
			logger.debug(article_no + "\t" + article_head + "\t" + article_title +  "\t" + article_content+ "\t" + user_nm+ "\t" + hitcount);
		}
	
  }
  

//  @Test
  public void testListPage() throws Exception {
    int board_no=1;
    int page = 2;
    
    List<Map<String, Object>> list = dao.listPage(board_no,page);
    logger.info(list);
    
    for (Map<String, Object> row : list) {
		// 숫자형은 BigDecimal로 받음
		BigDecimal article_no = (BigDecimal) row.get("ARTICLE_NO");
		String article_head = (String) row.get("ARTICLE_HEAD");
		String article_title = (String) row.get("ARTICLE_TITLE");
		String article_content = (String) row.get("ARTICLE_CONTENT");
		String user_nm = (String) row.get("USER_NM");
		String regdate = (String) row.get("REGIDATE");
		BigDecimal hitcount = (BigDecimal) row.get("HITCOUNT");
		logger.debug(article_no + "\t" + article_head + "\t" + article_title +  "\t" + article_content+ "\t" + user_nm+ "\t" + hitcount);
	}
  }

 // @Test
  public void testListCriteria() throws Exception {
    Criteria cri = new Criteria();
    cri.setPage(2);
    cri.setPerPageNum(20);
    cri.setBoard_no(1);

    List<Map<String, Object>> list = dao.listCriteria(cri);

    for (Map<String, Object> row : list) {
		// 숫자형은 BigDecimal로 받음
		BigDecimal article_no = (BigDecimal) row.get("ARTICLE_NO");
		String article_head = (String) row.get("ARTICLE_HEAD");
		String article_title = (String) row.get("ARTICLE_TITLE");
		String article_content = (String) row.get("ARTICLE_CONTENT");
		String user_nm = (String) row.get("USER_NM");
		String regdate = (String) row.get("REGIDATE");
		BigDecimal hitcount = (BigDecimal) row.get("HITCOUNT");
		logger.debug(article_no + "\t" + article_head + "\t" + article_title +  "\t" + article_content+ "\t" + user_nm+ "\t" + hitcount);
	}
  }

//  @Test
  public void testURI() throws Exception {
    UriComponents uriComponents = 
    		UriComponentsBuilder.newInstance()
    		.path("/article/read")
    		.queryParam("article_no", 12)
    		.queryParam("perPageNum", 10).build();

    logger.info("/article/read?article_no=12&perPageNum=10");
    logger.info(uriComponents.toString());
  }

//  @Test
  public void testURI2() throws Exception {
    UriComponents uriComponents = 
    		UriComponentsBuilder.newInstance()
    		.path("/{module}/{page}")
    		.queryParam("article_no", 12)
	        .queryParam("perPageNum", 10)
	        .build()
	        .expand("article", "read")
	        .encode();

    logger.info("/article/read?article_no=12&perPageNum=10");
    logger.info(uriComponents.toString());
  }

//  @Test
  public void testSearchList() throws Exception {
    SearchCriteria cri = new SearchCriteria();
    cri.setPage(1);
    cri.setKeyword("임");
    cri.setSearchType("w");

    logger.info("=====================================");

    List<Map<String, Object>> list = dao.listSearch(cri);

    for ( Map<String, Object> row : list) {
		// 숫자형은 BigDecimal로 받음
		BigDecimal article_no = (BigDecimal) row.get("ARTICLE_NO");
		String article_head = (String) row.get("ARTICLE_HEAD");
		String article_title = (String) row.get("ARTICLE_TITLE");
		String article_content = (String) row.get("ARTICLE_CONTENT");
		String user_nm = (String) row.get("USER_NM");
		String regdate = (String) row.get("REGIDATE");
		BigDecimal hitcount = (BigDecimal) row.get("HITCOUNT");
		logger.debug(article_no + "\t" + article_head + "\t" + article_title +  "\t" + article_content+ "\t" + user_nm+ "\t" + hitcount);
    }

    logger.info("=====================================");

    logger.info("COUNT: " + dao.listSearchCount(cri));
  }
  
//  @Test
  	public void TotalCountArticle() throws Exception {
  	    SearchCriteria cri = new SearchCriteria();
  	    cri.setPage(2);
  	    cri.setKeyword("임");
  	    cri.setSearchType("w");
  		int CountArticles= dao.listSearchCount(cri);
  		
  		logger.info(CountArticles);
  	}
  	
//  @Test
//  	public void testHitCount() throws Exception {
//  	    SearchCriteria cri = new SearchCriteria();
//  	    cri.setPage(2);
//  	    cri.setKeyword("임");
//  	    cri.setSearchType("w");
//  		int CountArticles= dao.listSearchCount(cri);
//  		
//  		logger.info(CountArticles);
//  	}

  	
    @Test
    public void testListCriteria2() throws Exception {
      Criteria cri = new Criteria();
      cri.setPage(2);
      cri.setPerPageNum(20);
      cri.setBoard_no(1);

      List<Map<String, Object>> list = dao.listCriteria(cri);

      for (Map<String, Object> row : list) {
  		// 숫자형은 BigDecimal로 받음
  		BigDecimal article_no = (BigDecimal) row.get("ARTICLE_NO");
  		String article_head = (String) row.get("ARTICLE_HEAD");
  		String article_title = (String) row.get("ARTICLE_TITLE");
  		String article_content = (String) row.get("ARTICLE_CONTENT");
  		String user_nm = (String) row.get("USER_NM");
  		String regdate = (String) row.get("REGIDATE");
  		BigDecimal hitcount = (BigDecimal) row.get("HITCOUNT");
  		logger.debug(article_no + "\t" + article_head + "\t" + article_title +  "\t" + article_content+ "\t" + user_nm+ "\t" + hitcount);
  	}
    }

}
