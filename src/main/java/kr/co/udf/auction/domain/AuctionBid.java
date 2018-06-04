package kr.co.udf.auction.domain;

import java.math.BigDecimal;

public class AuctionBid {
	

	//게시물 정보
	private Integer bidNo;
	private Integer companyNo;
	private Integer applyNo;
	private Integer userNo;
	private String regdate;
	private String updatedate;

	//회사 정보
	private String name;
	private String email;
	private int tel;
	private String addr;
	private String productList;
	private String meetDate;
	private String memo;
	private String type;
	
	public AuctionBid() {}

	public AuctionBid(Integer bidNo, Integer companyNo, Integer applyNo, Integer userNo, String regdate,
			String updatedate, String name, String email, int tel, String addr, String productList, String meetDate,
			String memo, String type) {
		super();
		this.bidNo = bidNo;
		this.companyNo = companyNo;
		this.applyNo = applyNo;
		this.userNo = userNo;
		this.regdate = regdate;
		this.updatedate = updatedate;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.addr = addr;
		this.productList = productList;
		this.meetDate = meetDate;
		this.memo = memo;
		this.type = type;
	}

	public Integer getBidNo() {
		return bidNo;
	}

	public void setBidNo(Integer bidNo) {
		this.bidNo = bidNo;
	}

	public Integer getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(Integer companyNo) {
		this.companyNo = companyNo;
	}

	public Integer getApplyNo() {
		return applyNo;
	}

	public void setApplyNo(Integer applyNo) {
		this.applyNo = applyNo;
	}

	public Integer getUserNo() {
		return userNo;
	}

	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getProductList() {
		return productList;
	}

	public void setProductList(String productList) {
		this.productList = productList;
	}

	public String getMeetDate() {
		return meetDate;
	}

	public void setMeetDate(String meetDate) {
		this.meetDate = meetDate;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "AuctionBid [bidNo=" + bidNo + ", companyNo=" + companyNo + ", applyNo=" + applyNo + ", userNo=" + userNo
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + ", name=" + name + ", email=" + email
				+ ", tel=" + tel + ", addr=" + addr + ", productList=" + productList + ", meetDate=" + meetDate
				+ ", memo=" + memo + ", type=" + type + "]";
	}
	
	
	

}
