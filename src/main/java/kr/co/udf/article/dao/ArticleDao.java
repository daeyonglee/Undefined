package kr.co.udf.article.dao;

import java.util.List;
import java.util.Map;

import kr.co.udf.article.domain.Article;

public interface ArticleDao {

  public void create(Article article) throws Exception;

  public Map<String, Object> read(Integer article_no) throws Exception;

  public void update(Article article) throws Exception;

  public void delete(Integer article_no) throws Exception;

  public List<Map<String, Object>> listAll(Integer board_no) throws Exception;
  
//  public List<Article> listPage(int page) throws Exception;
//
//  public List<Article> listCriteria(Criteria cri) throws Exception;
//
//  public int countPaging(Criteria cri) throws Exception;
//  
//  //use for dynamic sql
//  
//  public List<Article> listSearch(SearchCriteria cri)throws Exception;
//  
//  public int listSearchCount(SearchCriteria cri)throws Exception;

}
