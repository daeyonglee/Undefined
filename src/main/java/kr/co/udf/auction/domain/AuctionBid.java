package kr.co.udf.auction.domain;

import java.math.BigDecimal;

public class AuctionBid {

	// 게시물 정보
	private BigDecimal no;
	private Integer bidNo;
	private Integer companyNo;
	private Integer applyNo;
	private Integer userNo;
	private String regdate;
	private String updatedate;
	private String loc;
	private String day;
	private String time;
	private String deadline;
	private String stat;

	// 회사 정보
	private String name;
	private String email;
	private BigDecimal tel;
	private String addr;
	private String productList;
	private String meetDate;
	private String memo;
	private String type;
	private Integer discount;
	private String cnm;
	private String pnm;
	private BigDecimal price;
	private BigDecimal ctel;
	private Integer discountPrice;;

	public AuctionBid() {
	}

	public AuctionBid(BigDecimal no, Integer bidNo, Integer companyNo, Integer applyNo, Integer userNo, String regdate,
			String updatedate, String loc, String day, String time, String deadline, String stat, String name,
			String email, BigDecimal tel, String addr, String productList, String meetDate, String memo, String type,
			Integer discount, String cnm, String pnm, BigDecimal price, BigDecimal ctel, Integer discountPrice) {
		super();
		this.no = no;
		this.bidNo = bidNo;
		this.companyNo = companyNo;
		this.applyNo = applyNo;
		this.userNo = userNo;
		this.regdate = regdate;
		this.updatedate = updatedate;
		this.loc = loc;
		this.day = day;
		this.time = time;
		this.deadline = deadline;
		this.stat = stat;
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.addr = addr;
		this.productList = productList;
		this.meetDate = meetDate;
		this.memo = memo;
		this.type = type;
		this.discount = discount;
		this.cnm = cnm;
		this.pnm = pnm;
		this.price = price;
		this.ctel = ctel;
		this.discountPrice = discountPrice;
	}

	public BigDecimal getNo() {
		return no;
	}

	public void setNo(BigDecimal no) {
		this.no = no;
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

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public String getStat() {
		return stat;
	}

	public void setStat(String stat) {
		this.stat = stat;
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

	public BigDecimal getTel() {
		return tel;
	}

	public void setTel(BigDecimal tel) {
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

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public String getCnm() {
		return cnm;
	}

	public void setCnm(String cnm) {
		this.cnm = cnm;
	}

	public String getPnm() {
		return pnm;
	}

	public void setPnm(String pnm) {
		this.pnm = pnm;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getCtel() {
		return ctel;
	}

	public void setCtel(BigDecimal ctel) {
		this.ctel = ctel;
	}

	public Integer getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}

	@Override
	public String toString() {
		return "AuctionBid [no=" + no + ", bidNo=" + bidNo + ", companyNo=" + companyNo + ", applyNo=" + applyNo
				+ ", userNo=" + userNo + ", regdate=" + regdate + ", updatedate=" + updatedate + ", loc=" + loc
				+ ", day=" + day + ", time=" + time + ", deadline=" + deadline + ", stat=" + stat + ", name=" + name
				+ ", email=" + email + ", tel=" + tel + ", addr=" + addr + ", productList=" + productList
				+ ", meetDate=" + meetDate + ", memo=" + memo + ", type=" + type + ", discount=" + discount + ", cnm="
				+ cnm + ", pnm=" + pnm + ", price=" + price + ", ctel=" + ctel + ", discountPrice=" + discountPrice
				+ "]";
	}

}
