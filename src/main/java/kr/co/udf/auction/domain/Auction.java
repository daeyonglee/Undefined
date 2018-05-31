package kr.co.udf.auction.domain;

import java.math.BigDecimal;
import java.text.DecimalFormat;

public class Auction {
	
	private int no;
	private BigDecimal userNo;
	
	private String loc;
	private String locFirst;
	private String locSecond;
	private String locThird;
	
	private String date;
	private String day;
	private String time;
	
	private String memo;
	private String type;
	private String writer;
	private String deadline;
	private String stat;
	private String regdate;
	private String updatedate;
	

	public Auction() {}


	public Auction(int no, BigDecimal userNo, String loc, String locFirst, String locSecond, String locThird,
			String date, String day, String time, String memo, String type, String writer, String deadline, String stat,
			String regdate, String updatedate) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.loc = loc;
		this.locFirst = locFirst;
		this.locSecond = locSecond;
		this.locThird = locThird;
		this.date = date;
		this.day = day;
		this.time = time;
		this.memo = memo;
		this.type = type;
		this.writer = writer;
		this.deadline = deadline;
		this.stat = stat;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public BigDecimal getUserNo() {
		return userNo;
	}


	public void setUserNo(BigDecimal userNo) {
		this.userNo = userNo;
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


	@Override
	public String toString() {
		return "Auction [no=" + no + ", userNo=" + userNo + ", loc=" + loc + ", locFirst=" + locFirst + ", locSecond="
				+ locSecond + ", locThird=" + locThird + ", date=" + date + ", day=" + day + ", time=" + time
				+ ", memo=" + memo + ", type=" + type + ", writer=" + writer + ", deadline=" + deadline + ", stat="
				+ stat + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
}