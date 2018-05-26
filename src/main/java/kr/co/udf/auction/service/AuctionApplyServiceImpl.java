package kr.co.udf.auction.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.auction.dao.AuctionApplyDao;
import kr.co.udf.auction.domain.Auction;
import kr.co.udf.common.web.SearchParams;

@Service
public class AuctionApplyServiceImpl implements AuctionApplyService {
	
	@Inject
	private AuctionApplyDao dao;
	

	@Override
	public void create(Auction auction) throws Exception {
		dao.create(auction);

	}

	@Override
	public Auction read(int no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Auction auction) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int no) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Auction> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<Auction> listParams(SearchParams params) throws Exception {
		return dao.listParams(params);
	}

}
