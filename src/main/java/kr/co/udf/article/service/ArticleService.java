package kr.co.udf.article.service;

import java.util.List;
import java.util.Map;

import kr.co.udf.article.domain.Article;
import kr.co.udf.article.domain.Criteria;

public interface ArticleService {

  public void regist(Article article) throws Exception;

  public Map<String, Object> read(Integer article_no) throws Exception;

  public void modify(Article article) throws Exception;

  public void remove(Integer article_no) throws Exception;

  public List<Map<String, Object>> listAll(Integer board_no) throws Exception;

  public List<Map<String, Object>> listCriteria(Criteria cri) throws Exception;

  public int listCountCriteria(Criteria cri) throws Exception;

//  public List<Article> listSearchCriteria(SearchCriteria cri) 
//      throws Exception;
//
//  public int listSearchCount(SearchCriteria cri) throws Exception;

}
