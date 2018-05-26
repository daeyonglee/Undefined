package kr.co.udf.company.domain;

public class StudioInterest {

	private int sicNo; 		// 장바구니 번호
	private int userNo; 		// 사용자 아이디
	private int scNo; 	// 상품 번호
	private String regdate; 		// 등록일
	private String updatedate; // 업데이트 날짜
	
	public int getSicNo() {
		return sicNo;
	}
	public void setSicNo(int sicNo) {
		this.sicNo = sicNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getScNo() {
		return scNo;
	}
	public void setScNo(int scNo) {
		this.scNo = scNo;
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
		return "Interest [sicNo=" + sicNo + ", userNo=" + userNo + ", scNo=" + scNo + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}
	
}

