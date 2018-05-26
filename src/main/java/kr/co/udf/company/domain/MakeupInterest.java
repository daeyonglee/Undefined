package kr.co.udf.company.domain;

public class MakeupInterest {

	private int micNo; 		// 장바구니 번호
	private int userNo; 		// 사용자 아이디
	private int mcNo; 	// 상품 번호
	private String regdate; 		// 등록일
	private String updatedate; // 업데이트 날짜
	
	public int getMicNo() {
		return micNo;
	}
	public void setMicNo(int micNo) {
		this.micNo = micNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getMcNo() {
		return mcNo;
	}
	public void setMcNo(int mcNo) {
		this.mcNo = mcNo;
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
		return "MakeupInterest [micNo=" + micNo + ", userNo=" + userNo + ", mcNo=" + mcNo + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}
	
}

