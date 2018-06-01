package kr.co.udf.reply.dao;

import java.util.List;

import kr.co.udf.reply.domain.Criteria;
import kr.co.udf.reply.domain.Reply;

public interface ReplyDao {
	
	public List<Reply> listAll(Integer article_no)throws Exception;

	public void create(Reply reply)throws Exception;
	
	public void update(Reply reply)throws Exception;
	
	public void delete(Integer reply_no)throws Exception;

	public List<Reply> listPage(
			Integer article_no,Criteria cri)throws Exception;
	
	public int count(Integer article_no) throws Exception;
} 
