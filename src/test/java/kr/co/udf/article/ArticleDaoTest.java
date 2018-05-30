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

import kr.co.udf.article.dao.ArticleDao;
import kr.co.udf.article.domain.Article;
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
//  public void testListPage() throws Exception {
//
//    int page = 3;
//
//    List<Board> list = dao.listPage(page);
//
//    for (Board board : list) {
//      logger.info(board.getBno() + ":" + board.getTitle());
//    }
//  }

//  @Test
//  public void testListCriteria() throws Exception {
//
//    Criteria cri = new Criteria();
//    cri.setPage(2);
//    cri.setPerPageNum(20);
//
//    List<Board> list = dao.listCriteria(cri);
//
//    for (Board board : list) {
//      logger.info(board.getBno() + ":" + board.getTitle());
//    }
//  }

//  @Test
//  public void testURI() throws Exception {
//
//    UriComponents uriComponents = UriComponentsBuilder.newInstance().path("/board/read").queryParam("bno", 12)
//        .queryParam("perPageNum", 20).build();
//
//    logger.info("/board/read?bno=12&perPageNum=20");
//    logger.info(uriComponents.toString());
//
//  }
//
//  @Test
//  public void testURI2() throws Exception {
//
//    UriComponents uriComponents = UriComponentsBuilder.newInstance().path("/{module}/{page}").queryParam("bno", 12)
//        .queryParam("perPageNum", 20).build().expand("board", "read").encode();
//
//    logger.info("/board/read?bno=12&perPageNum=20");
//    logger.info(uriComponents.toString());
//  }
//
//  @Test
//  public void testDynamic1() throws Exception {
//
//    SearchCriteria cri = new SearchCriteria();
//    cri.setPage(1);
//    cri.setKeyword("글");
//    cri.setSearchType("t");
//
//    logger.info("=====================================");
//
//    List<Board> list = dao.listSearch(cri);
//
//    for (Board board : list) {
//      logger.info(board.getBno() + ": " + board.getTitle());
//    }
//
//    logger.info("=====================================");
//
//    logger.info("COUNT: " + dao.listSearchCount(cri));
//  }

}
