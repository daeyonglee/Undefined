package kr.co.udf.article.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.article.domain.Article;
import kr.co.udf.article.domain.Criteria;
import kr.co.udf.article.domain.SearchCriteria;

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
	public List<Map<String, Object>> listAll(Integer board_no) throws Exception {
		return session.selectList(namespace + ".listAll",board_no);
	}

	@Override
	public  List<Map<String, Object>> listPage(Integer board_no, Integer page) throws Exception {
		if(page<=0) {
			page=1;
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("board_no", board_no);
		map.put("page", page);

		return session.selectList(namespace + ".listPage", map);
	}

	@Override
	public List<Map<String, Object>> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace + ".listPage", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public List<Map<String, Object>> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}
	
	
}
