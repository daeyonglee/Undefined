package kr.co.udf.article.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.article.domain.Article;

@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Inject
	private SqlSession session;
	private static String namespace = "kr.co.udf.article.dao.ArticleDao";

	@Override
	public void create(Article article) throws Exception {
		session.insert(namespace + ".create",article);
	}

	@Override
	public Map<String, Object> read(Integer article_no) throws Exception {
	    return session.selectOne(namespace + ".read", article_no);
	}

	@Override
	public void update(Article article) throws Exception {
	    session.update(namespace + ".update", article);
	}

	@Override
	public void delete(Integer article_no) throws Exception {
	    session.delete(namespace + ".delete", article_no);
	}

	@Override
	public List<Map<String, Object>> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}
}
