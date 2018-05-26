package kr.co.udf.company.domain;

public class DressInterest {

	private int dicNo; 		// 장바구니 번호
	private int userNo; 		// 사용자 아이디
	private int dcNo; 	// 상품 번호
	private String regdate; 		// 등록일
	private String updatedate; // 업데이트 날짜
	
	public int getDicNo() {
		return dicNo;
	}
	public void setDicNo(int dicNo) {
		this.dicNo = dicNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getDcNo() {
		return dcNo;
	}
	public void setDcNo(int dcNo) {
		this.dcNo = dcNo;
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
		return "DressInterest [dicNo=" + dicNo + ", userNo=" + userNo + ", dcNo=" + dcNo + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}

}

