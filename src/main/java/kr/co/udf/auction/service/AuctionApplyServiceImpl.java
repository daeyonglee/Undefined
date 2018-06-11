package kr.co.udf.auction.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.auction.dao.AuctionApplyDao;
import kr.co.udf.auction.domain.Auction;
import kr.co.udf.auction.domain.DayCount;
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
	public List<Auction> winlistByStudio(SearchParams params) throws Exception {
		return dao.winlistByDress(params);
	}

	@Override
	public List<Auction> winlistByDress(SearchParams params) throws Exception {
		return dao.winlistByDress(params);
	}

	@Override
	public List<Auction> winlistByMakeup(SearchParams params) throws Exception {
		return dao.winlistByMakeup(params);
	}
	
	@Override
	public Auction read(int no ,String type) throws Exception {
		Auction	auction = dao.read(no,type);
			
		String[] arr = auction.getLoc().split("\\|\\|");
		auction.setLocFirst(arr[0]);
		auction.setLocSecond(arr[1]);	
		auction.setLocThird(arr[2]);
	
	  return auction;
		 
	}
	
	
	@Override
	public void modify(Auction auction) throws Exception {
		
		String loc = auction.getLocFirst() + "||" + auction.getLocSecond() + "||" + auction.getLocThird();
		auction.setLoc(loc);
		
		String date = auction.getDay() + " " + auction.getTime();
		auction.setDate(date);
		dao.update(auction);

	}

	@Override
	public void delete(int no, String type) throws Exception {
          dao.delete(no, type);
	}

	@Override
	public List<Auction> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<Auction> listParams(SearchParams params) throws Exception {
		List<Auction> auction = dao.listParams(params);
		
		for (Auction list : auction) {
			
		String[] arr = list.getLoc().split("\\|\\|");
			list.setLocFirst(arr[0]);
			list.setLocSecond(arr[1]);
			list.setLocThird(arr[2]);
			
		}						
		
		return auction;
	}
	
	@Override
	public List<Auction> winlistParams(SearchParams params) throws Exception {
		List<Auction> auction = dao.winlistParams(params);
		
		for (Auction list : auction) {
			
			String[] arr = list.getLoc().split("\\|\\|");
				list.setLocFirst(arr[0]);
				list.setLocSecond(arr[1]);
				list.setLocThird(arr[2]);
				
			}							
		return auction;
	}

	@Override
	public int countPage() throws Exception {
		return dao.countPage();
	}

	@Override
	public List<Auction> realtimelist() throws Exception {
		return dao.realtimelist();
	}

	@Override
	public List<Auction> winrealtimelist() throws Exception {
		return dao.winrealtimelist();
	}

	@Override
	public List<Auction> dressrealtimelist() throws Exception {
		return dao.dressrealtimelist();
	}

	@Override
	public List<Auction> dresswinrealtimelist() throws Exception {
		return dao.dresswinrealtimelist();
	}

	@Override
	public List<Auction> makeuprealtimelist() throws Exception {
		return dao.makeuprealtimelist();
	}

	@Override
	public List<Auction> makeupwinrealtimelist() throws Exception {
		return dao.makeupwinrealtimelist();
	}

	@Override
	public int listByTypeCount(SearchParams params) throws Exception {
		return dao.listByTypeCount(params);
	}

	@Override
	public int winlistByTypeCount(SearchParams params) throws Exception {
		return dao.winlistByTypeCount(params);
	}
	
	@Override
	public DayCount daycount(int no, String type) throws Exception {
		return dao.daycount(no, type);
	}
}
