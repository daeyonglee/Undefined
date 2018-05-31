package kr.co.udf.board.dao;


import java.util.List;

import kr.co.udf.board.domain.Board;

public interface BoardDao {

  public void create(String board_nm) throws Exception;

  public Board read(Integer board_no) throws Exception;

  public void update(Board board) throws Exception;

  public void delete(Integer board_no) throws Exception;

  public List<Board> listAll() throws Exception;

//  public List<Board> listPage(int page) throws Exception;
//
//  public List<Board> listCriteria(Criteria cri) throws Exception;
//
//  public int countPaging(Criteria cri) throws Exception;
//  
//  //use for dynamic sql
//  
//  public List<Board> listSearch(SearchCriteria cri)throws Exception;
//  
//  public int listSearchCount(SearchCriteria cri)throws Exception;

}
