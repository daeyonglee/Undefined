package kr.co.udf.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.board.domain.Board;

@Repository
public class BoardDaoImpl implements BoardDao {

  @Inject
  private SqlSession session;

  private static String namespace = "kr.co.udf.board.dao.BoardDao";

  @Override
  public void create(String board_nm) throws Exception {
    session.insert(namespace + ".create", board_nm);
  }

  @Override
  public Board read(Integer board_no) throws Exception {
    return session.selectOne(namespace + ".read", board_no);
  }

  @Override
  public void update(Board board) throws Exception {
    session.update(namespace + ".update", board);
  }

  @Override
  public void delete(Integer board_no) throws Exception {
    session.delete(namespace + ".delete", board_no);
  }

  @Override
  public List<Board> listAll() throws Exception {
    return session.selectList(namespace + ".listAll");
  }

}
