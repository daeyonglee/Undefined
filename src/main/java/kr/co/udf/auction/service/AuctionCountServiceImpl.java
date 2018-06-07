package kr.co.udf.auction.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.udf.auction.dao.AuctionDao;
import kr.co.udf.auction.domain.AuctionCount;

@Service
public class AuctionCountServiceImpl implements AuctionCountService {

	@Inject
	AuctionDao dao;

	@Override
	public AuctionCount count() throws Exception{
		return dao.count();
	}
}
