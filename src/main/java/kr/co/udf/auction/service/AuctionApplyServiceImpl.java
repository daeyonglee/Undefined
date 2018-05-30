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
	public void createDress(Auction auction) throws Exception {
		dao.createDress(auction);
	}

	@Override
	public void createStudio(Auction auction) throws Exception {
		dao.createStudio(auction);
	}

	@Override
	public void createMakeup(Auction auction) throws Exception {
		dao.createMakeup(auction);
	}
	
	@Override
	public List<Auction> listByDress(SearchParams params) throws Exception {
		return dao.listByDress(params);
	}

	@Override
	public List<Auction> listByStudio(SearchParams params) throws Exception {
		return dao.listByStudio(params);
	}

	@Override
	public List<Auction> listByMakeup(SearchParams params) throws Exception {
		return dao.listByMakeup(params);
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

	@Override
	public int countPage() throws Exception {
		return dao.countPage();
	}
	
	@Override
	public int listByTypeCount() throws Exception {
		return dao.listByTypeCount();
	}


}
