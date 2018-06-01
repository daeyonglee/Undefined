package kr.co.udf.reply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.reply.dao.ReplyDao;
import kr.co.udf.reply.domain.Criteria;
import kr.co.udf.reply.domain.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDao dao;
	
	@Override
	public void addReply(Reply reply) throws Exception {
		dao.create(reply);
	}

	@Override
	public List<Reply> listReply(Integer article_no) throws Exception {
		return dao.listAll(article_no);
	}

	@Override
	public void modifyReply(Reply reply) throws Exception {
		dao.update(reply);
	}

	@Override
	public void removeReply(Integer reply_no) throws Exception {
		dao.delete(reply_no);
	}

	@Override
	public List<Reply> listReplyPage(Integer article_no, Criteria cri) throws Exception {
		return dao.listPage(article_no, cri);
	}

	@Override
	public int count(Integer article_no) throws Exception {
		return dao.count(article_no);
	}

}
