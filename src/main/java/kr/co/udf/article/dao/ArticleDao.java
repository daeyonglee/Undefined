package kr.co.udf.article.dao;

import java.util.List;
import java.util.Map;

import kr.co.udf.article.domain.Article;
import kr.co.udf.article.domain.Criteria;
import kr.co.udf.article.domain.SearchCriteria;

public interface ArticleDao {

  public void create(Article article) throws Exception;

  public Map<String, Object> read(Integer article_no) throws Exception;

  public void update(Article article) throws Exception;

  public void delete(Integer article_no) throws Exception;

  public List<Map<String, Object>> listAll(Integer board_no) throws Exception;
  
  public List<Map<String, Object>> listPage(Integer board_no,Integer page) throws Exception;
  
  public List<Map<String, Object>> listCriteria(Criteria cri) throws Exception;

  public int countPaging(Criteria cri) throws Exception;

  public List<Map<String, Object>> listSearch(SearchCriteria cri)throws Exception;
  
  public int listSearchCount(SearchCriteria cri)throws Exception;
  
  /* hitCount수 Update*/
  public void hitCount(int article_no);

}
