package kr.co.udf.reply.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.udf.reply.domain.Criteria;
import kr.co.udf.reply.domain.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace ="kr.co.udf.reply.dao.ReplyDao";
	
	@Override
	public List<Reply> listAll(Integer article_no) throws Exception {
		return sqlSession.selectList(namespace+".list",article_no);
	}

	@Override
	public void create(Reply reply) throws Exception {
		sqlSession.insert(namespace+".create",reply);
	}

	@Override
	public void update(Reply reply) throws Exception {
		sqlSession.update(namespace+".update",reply);
	}

	@Override
	public void delete(Integer reply_no) throws Exception {
		sqlSession.delete(namespace+".delete",reply_no);
	}

	@Override
	public List<Reply> listPage(Integer article_no, Criteria cri) throws Exception {
		
		Map<String,Object> paramMap=new HashMap<>();
		
		paramMap.put("article_no", article_no);
		paramMap.put("cri", cri);
		
		return sqlSession.selectList(namespace+".listPage", paramMap);
		//return sqlSession.selectList(namespace+".list",article_no);
	}

	@Override
	public int count(Integer article_no) throws Exception {
		return sqlSession.selectOne(namespace+".count",article_no);
	}

}
