package kr.co.udf.company.domain;

public class DressInterest {

	private int dic_no; 		// 장바구니 번호
	private int user_no; 		// 사용자 아이디
	private int dc_no; 	// 업체 번호
	private String regdate; 		// 등록일
	private String updatedate; // 업데이트 날짜
	private String dc_nm;
	private String dc_addr;
	private String dc_main_image;
	private String dc_email;
	private String dc_tel;
	

	public int getDic_no() {
		return dic_no;
	}


	public void setDic_no(int dic_no) {
		this.dic_no = dic_no;
	}


	public int getUser_no() {
		return user_no;
	}


	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}


	public int getDc_no() {
		return dc_no;
	}


	public void setDc_no(int dc_no) {
		this.dc_no = dc_no;
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


	public String getDc_nm() {
		return dc_nm;
	}


	public void setDc_nm(String dc_nm) {
		this.dc_nm = dc_nm;
	}


	public String getDc_addr() {
		return dc_addr;
	}


	public void setDc_addr(String dc_addr) {
		this.dc_addr = dc_addr;
	}


	public String getDc_main_image() {
		return dc_main_image;
	}


	public void setDc_main_image(String dc_main_image) {
		this.dc_main_image = dc_main_image;
	}


	public String getDc_email() {
		return dc_email;
	}


	public void setDc_email(String dc_email) {
		this.dc_email = dc_email;
	}


	public String getDc_tel() {
		return dc_tel;
	}


	public void setDc_tel(String dc_tel) {
		this.dc_tel = dc_tel;
	}


	@Override
	public String toString() {
		return "DressInterest [dic_no=" + dic_no + ", user_no=" + user_no + ", dc_no=" + dc_no + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + ", dc_nm=" + dc_nm + ", dc_addr=" + dc_addr + ", dc_main_image="
				+ dc_main_image + ", dc_email=" + dc_email + ", dc_tel=" + dc_tel + "]";
	}

	
}

