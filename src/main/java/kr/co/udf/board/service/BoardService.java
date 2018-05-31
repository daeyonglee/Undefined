package kr.co.udf.board.service;

import java.util.List;

import kr.co.udf.board.domain.Board;

public interface BoardService {

  public void regist(String board_no) throws Exception;

  public Board read(Integer board_no) throws Exception;

  public void modify(Board board) throws Exception;

  public void remove(Integer board_no) throws Exception;

  public List<Board> listAll() throws Exception;

//  public List<Board> listCriteria(Criteria cri) throws Exception;
//
//  public int listCountCriteria(Criteria cri) throws Exception;
//
//  public List<Board> listSearchCriteria(SearchCriteria cri) 
//      throws Exception;
//
//  public int listSearchCount(SearchCriteria cri) throws Exception;

}
