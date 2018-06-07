package kr.co.udf.auction.domain;

import java.math.BigDecimal;

public class Auction {

	private BigDecimal no;
	private BigDecimal userNo;
	private BigDecimal tel;
	
	// 예식 희망 지역
	private String loc;
	private String locFirst;
	private String locSecond;
	private String locThird;

	// date = day + time
	private String date; 
	private String dateFirst;
	private String dateSecond;
	private String dateThird;
	
	// YYYY-MM-DD
	private String day;
	private String dayFirst;
	private String daySecond;
	private String dayThird;
	
	// HH24:MI
	private String time;
	private String timeFirst;
	private String timeSecond;
	private String timeThird;

	private String memo;
	private String type;
	private String writer;
	private String deadline;
	private String stat;
	private String regdate;
	private String updatedate;
	private Integer price;
	private Integer discount;
	private Integer discountPrice;

	public Auction() {}

	public Auction(BigDecimal no, BigDecimal userNo, BigDecimal tel, String loc, String locFirst, String locSecond,
			String locThird, String date, String dateFirst, String dateSecond, String dateThird, String day,
			String dayFirst, String daySecond, String dayThird, String time, String timeFirst, String timeSecond,
			String timeThird, String memo, String type, String writer, String deadline, String stat, String regdate,
			String updatedate, Integer price, Integer discount, Integer discountPrice) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.tel = tel;
		this.loc = loc;
		this.locFirst = locFirst;
		this.locSecond = locSecond;
		this.locThird = locThird;
		this.date = date;
		this.dateFirst = dateFirst;
		this.dateSecond = dateSecond;
		this.dateThird = dateThird;
		this.day = day;
		this.dayFirst = dayFirst;
		this.daySecond = daySecond;
		this.dayThird = dayThird;
		this.time = time;
		this.timeFirst = timeFirst;
		this.timeSecond = timeSecond;
		this.timeThird = timeThird;
		this.memo = memo;
		this.type = type;
		this.writer = writer;
		this.deadline = deadline;
		this.stat = stat;
		this.regdate = regdate;
		this.updatedate = updatedate;
		this.price = price;
		this.discount = discount;
		this.discountPrice = discountPrice;
	}

	public BigDecimal getNo() {
		return no;
	}

	public void setNo(BigDecimal no) {
		this.no = no;
	}

	public BigDecimal getUserNo() {
		return userNo;
	}

	public void setUserNo(BigDecimal userNo) {
		this.userNo = userNo;
	}

	public BigDecimal getTel() {
		return tel;
	}

	public void setTel(BigDecimal tel) {
		this.tel = tel;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getLocFirst() {
		return locFirst;
	}

	public void setLocFirst(String locFirst) {
		this.locFirst = locFirst;
	}

	public String getLocSecond() {
		return locSecond;
	}

	public void setLocSecond(String locSecond) {
		this.locSecond = locSecond;
	}

	public String getLocThird() {
		return locThird;
	}

	public void setLocThird(String locThird) {
		this.locThird = locThird;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDateFirst() {
		return dateFirst;
	}

	public void setDateFirst(String dateFirst) {
		this.dateFirst = dateFirst;
	}

	public String getDateSecond() {
		return dateSecond;
	}

	public void setDateSecond(String dateSecond) {
		this.dateSecond = dateSecond;
	}

	public String getDateThird() {
		return dateThird;
	}

	public void setDateThird(String dateThird) {
		this.dateThird = dateThird;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getDayFirst() {
		return dayFirst;
	}

	public void setDayFirst(String dayFirst) {
		this.dayFirst = dayFirst;
	}

	public String getDaySecond() {
		return daySecond;
	}

	public void setDaySecond(String daySecond) {
		this.daySecond = daySecond;
	}

	public String getDayThird() {
		return dayThird;
	}

	public void setDayThird(String dayThird) {
		this.dayThird = dayThird;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getTimeFirst() {
		return timeFirst;
	}

	public void setTimeFirst(String timeFirst) {
		this.timeFirst = timeFirst;
	}

	public String getTimeSecond() {
		return timeSecond;
	}

	public void setTimeSecond(String timeSecond) {
		this.timeSecond = timeSecond;
	}

	public String getTimeThird() {
		return timeThird;
	}

	public void setTimeThird(String timeThird) {
		this.timeThird = timeThird;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public Integer getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(Integer discountPrice) {
		this.discountPrice = discountPrice;
	}

	@Override
	public String toString() {
		return "Auction [no=" + no + ", userNo=" + userNo + ", tel=" + tel + ", loc=" + loc + ", locFirst=" + locFirst
				+ ", locSecond=" + locSecond + ", locThird=" + locThird + ", date=" + date + ", dateFirst=" + dateFirst
				+ ", dateSecond=" + dateSecond + ", dateThird=" + dateThird + ", day=" + day + ", dayFirst=" + dayFirst
				+ ", daySecond=" + daySecond + ", dayThird=" + dayThird + ", time=" + time + ", timeFirst=" + timeFirst
				+ ", timeSecond=" + timeSecond + ", timeThird=" + timeThird + ", memo=" + memo + ", type=" + type
				+ ", writer=" + writer + ", deadline=" + deadline + ", stat=" + stat + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + ", price=" + price + ", discount=" + discount + ", discountPrice="
				+ discountPrice + "]";
	}
}