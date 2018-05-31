package kr.co.udf.article.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.article.dao.ArticleDao;
import kr.co.udf.article.domain.Article;
import kr.co.udf.article.domain.Criteria;

@Service
public class ArticleServiceImpl implements ArticleService {

  @Inject
  private ArticleDao dao;

  @Override
  public void regist(Article article) throws Exception {
	  dao.create(article);
  }

  @Override
  public Map<String, Object> read(Integer article_no) throws Exception {
    return dao.read(article_no);
  }

  @Override
  public void modify(Article article) throws Exception {
	  dao.update(article);
  }

  @Override
  public void remove(Integer article_no) throws Exception {
	  dao.delete(article_no);
  }

  @Override
  public List<Map<String, Object>> listAll(Integer board_no) throws Exception{
    return dao.listAll(board_no);
  }

  @Override
  public List<Map<String, Object>> listCriteria(Criteria cri) throws Exception {
    return dao.listCriteria(cri);
  }

  @Override
  public int listCountCriteria(Criteria cri) throws Exception {
    return dao.countPaging(cri);
  }
//
//  @Override
//  public List<Article> listSearchCriteria(SearchCriteria cri) throws Exception {
//
//    return articleDao.listSearch(cri);
//  }
//
//  @Override
//  public int listSearchCount(SearchCriteria cri) throws Exception {
//
//    return articleDao.listSearchCount(cri);
//  }


}
