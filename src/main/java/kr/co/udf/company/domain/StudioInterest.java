package kr.co.udf.company.domain;

public class StudioInterest {

	private int sic_no; 		// 장바구니 번호
	private int user_no; 		// 사용자 아이디
	private int sc_no; 	// 업체 번호
	private String regdate; 		// 등록일
	private String updatedate; // 업데이트 날짜
	private String sc_nm;
	private String sc_addr;
	private String sc_main_image;
	private String sc_email;
	private String sc_tel;
	
	public int getSic_no() {
		return sic_no;
	}



	public void setSic_no(int sic_no) {
		this.sic_no = sic_no;
	}



	public int getUser_no() {
		return user_no;
	}



	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}



	public int getSc_no() {
		return sc_no;
	}



	public void setSc_no(int sc_no) {
		this.sc_no = sc_no;
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



	public String getSc_nm() {
		return sc_nm;
	}



	public void setSc_nm(String sc_nm) {
		this.sc_nm = sc_nm;
	}



	public String getSc_addr() {
		return sc_addr;
	}



	public void setSc_addr(String sc_addr) {
		this.sc_addr = sc_addr;
	}



	public String getSc_main_image() {
		return sc_main_image;
	}



	public void setSc_main_image(String sc_main_image) {
		this.sc_main_image = sc_main_image;
	}



	public String getSc_email() {
		return sc_email;
	}



	public void setSc_email(String sc_email) {
		this.sc_email = sc_email;
	}



	public String getSc_tel() {
		return sc_tel;
	}



	public void setSc_tel(String sc_tel) {
		this.sc_tel = sc_tel;
	}



	@Override
	public String toString() {
		return "StudioInterest [sic_no=" + sic_no + ", user_no=" + user_no + ", sc_no=" + sc_no + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + ", sc_nm=" + sc_nm + ", sc_addr=" + sc_addr + ", sc_main_image="
				+ sc_main_image + ", sc_email=" + sc_email + ", sc_tel=" + sc_tel + "]";
	}






}

