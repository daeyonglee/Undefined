package kr.co.udf.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.udf.board.dao.BoardDao;
import kr.co.udf.board.domain.Board;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml",
		                            "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class BoardDaoTest {
  @Inject
  private BoardDao dao;
  private static final Logger logger = Logger.getLogger(BoardDaoTest.class);

//  @Test
  public void testCreate() throws Exception {
    String board_nm = "쪽지함2";
    logger.info("board: "+ board_nm);
    
    dao.create(board_nm);
    logger.info("testCreate완료");
  }

  //@Test
  public void testRead() throws Exception {
    logger.info(dao.read(1).toString());
    System.out.println(dao.read(1));
  }

  //@Test
  public void testUpdate() throws Exception {
    Board board = new Board();
    board.setBoard_no(22);
    board.setBoard_nm("수정된 게시판 제목.");
    dao.update(board);
  }

  //@Test
  public void testDelete() throws Exception {
    dao.delete(22);
  }

//  @Test
  public void testListAll() throws Exception {
	  List<Board> list =dao.listAll();
	
	  for (Board board : list) {
	    logger.info(board.getBoard_nm());
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
