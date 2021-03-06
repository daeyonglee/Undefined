package kr.co.udf.company.service;

import java.util.List;

import kr.co.udf.auction.domain.Auction;

public interface InterestService {
	
	public void create(Auction auction) throws Exception;
	
	public Auction read(int no) throws Exception;
	
	public void update(Auction auction) throws Exception;
	
	public void delete(int no) throws Exception;
	
	public List<Auction> listAll() throws Exception;
	
}
