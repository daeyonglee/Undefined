package kr.co.udf.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.board.dao.BoardDao;
import kr.co.udf.board.domain.Board;

@Service
public class BoardServiceImpl implements BoardService {

  @Inject
  private BoardDao dao;

  @Override
  public void regist(String board_no) throws Exception {
	  dao.create(board_no);
  }

  @Override
  public Board read(Integer board_no) throws Exception {
    return dao.read(board_no);
  }

  @Override
  public void modify(Board board) throws Exception {
	  dao.update(board);
  }

  @Override
  public void remove(Integer board_no) throws Exception {
	  dao.delete(board_no);
  }

  @Override
  public List<Board> listAll() throws Exception {
    return dao.listAll();
  }

//  @Override
//  public List<Board> listCriteria(Criteria cri) throws Exception {
//
//    return boardDao.listCriteria(cri);
//  }
//
//  @Override
//  public int listCountCriteria(Criteria cri) throws Exception {
//
//    return boardDao.countPaging(cri);
//  }
//
//  @Override
//  public List<Board> listSearchCriteria(SearchCriteria cri) throws Exception {
//
//    return boardDao.listSearch(cri);
//  }
//
//  @Override
//  public int listSearchCount(SearchCriteria cri) throws Exception {
//
//    return boardDao.listSearchCount(cri);
//  }

}
