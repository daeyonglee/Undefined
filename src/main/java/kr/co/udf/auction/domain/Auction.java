package kr.co.udf.auction.domain;

public class Auction {
	
	private int no;
	private int userNo;
	private String loc;
	private String day;
	private String time;
	private String memo;
	private String type;
	private String writer;
	private String deadline;
	private String regdate;
	private String updatedate;
	
	private String date = day + " " + time;

	public Auction() {}


	public Auction(int no, int userNo, String loc, String day, String time, String memo, String type, String writer,
			String deadline, String regdate, String updatedate, String date) {
		super();
		this.no = no;
		this.userNo = userNo;
		this.loc = loc;
		this.day = day;
		this.time = time;
		this.memo = memo;
		this.type = type;
		this.writer = writer;
		this.deadline = deadline;
		this.regdate = regdate;
		this.updatedate = updatedate;
		this.date = date;
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}


	public String getDeadline() {
		return deadline;
	}


	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}


	@Override
	public String toString() {
		return "Auction [no=" + no + ", userNo=" + userNo + ", loc=" + loc + ", day=" + day + ", time=" + time
				+ ", memo=" + memo + ", type=" + type + ", writer=" + writer + ", deadline=" + deadline + ", regdate="
				+ regdate + ", updatedate=" + updatedate + ", date=" + date + "]";
	}


}