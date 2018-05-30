package kr.co.udf.auction.domain;

/**
 * 전체 회원 수, 전체 스드메 제휴 업체 수, 전체 역경매 신청 현황 수를 위한 domain
 * @author 이종찬
 *
 */
public class AuctionCount {

	private Integer userCnt;
	private Integer companyCnt;
	private Integer bidCnt;
	
	public AuctionCount() {
		// TODO Auto-generated constructor stub
	}

	public AuctionCount(Integer userCnt, Integer companyCnt, Integer bidCnt) {
		super();
		this.userCnt = userCnt;
		this.companyCnt = companyCnt;
		this.bidCnt = bidCnt;
	}

	public Integer getUserCnt() {
		return userCnt;
	}

	public void setUserCnt(Integer userCnt) {
		this.userCnt = userCnt;
	}

	public Integer getCompanyCnt() {
		return companyCnt;
	}

	public void setCompanyCnt(Integer companyCnt) {
		this.companyCnt = companyCnt;
	}

	public Integer getBidCnt() {
		return bidCnt;
	}

	public void setBidCnt(Integer bidCnt) {
		this.bidCnt = bidCnt;
	}

	@Override
	public String toString() {
		return "AuctionCount [userCnt=" + userCnt + ", companyCnt=" + companyCnt + ", bidCnt=" + bidCnt + "]";
	}
	
}
