package kr.co.udf.reply.service;

import java.util.List;

import kr.co.udf.reply.domain.Criteria;
import kr.co.udf.reply.domain.Reply;

public interface ReplyService{
	
	public void addReply(Reply reply)throws Exception;
	
	public List<Reply> listReply(Integer article_no) throws Exception;
	
	public void modifyReply(Reply reply) throws Exception;
	
	public void removeReply(Integer reply_no) throws Exception;
	
	public List<Reply> listReplyPage(Integer article_no,Criteria cri)
	throws Exception;
	
	public int count(Integer article_no) throws Exception;
}
