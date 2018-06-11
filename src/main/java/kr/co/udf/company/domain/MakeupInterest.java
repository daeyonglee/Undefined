package kr.co.udf.company.domain;

public class MakeupInterest {

	private int mic_no; 		// 장바구니 번호
	private int user_no; 		// 사용자 아이디
	private int mc_no; 	// 업체 번호
	private String regdate; 		// 등록일
	private String updatedate; // 업데이트 날짜
	private String mc_nm;
	private String mc_addr;
	private String mc_main_image;
	private String mc_email;
	private String mc_tel;
	
	public int getMic_no() {
		return mic_no;
	}
	
	public void setMic_no(int mic_no) {
		this.mic_no = mic_no;
	}
	
	public int getUser_no() {
		return user_no;
	}
	
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	public int getMc_no() {
		return mc_no;
	}
	
	public void setMc_no(int mc_no) {
		this.mc_no = mc_no;
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
	
	public String getMc_nm() {
		return mc_nm;
	}
	
	public void setMc_nm(String mc_nm) {
		this.mc_nm = mc_nm;
	}
	
	public String getMc_addr() {
		return mc_addr;
	}
	
	public void setMc_addr(String mc_addr) {
		this.mc_addr = mc_addr;
	}
	
	public String getMc_main_image() {
		return mc_main_image;
	}
	
	public void setMc_main_image(String mc_main_image) {
		this.mc_main_image = mc_main_image;
	}
	
	public String getMc_email() {
		return mc_email;
	}
	
	public void setMc_email(String mc_email) {
		this.mc_email = mc_email;
	}
	
	public String getMc_tel() {
		return mc_tel;
	}
	
	public void setMc_tel(String mc_tel) {
		this.mc_tel = mc_tel;
	}
	
	@Override
	public String toString() {
		return "MakeupInterest [mic_no=" + mic_no + ", user_no=" + user_no + ", mc_no=" + mc_no + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + ", mc_nm=" + mc_nm + ", mc_addr=" + mc_addr + ", mc_main_image="
				+ mc_main_image + ", mc_email=" + mc_email + ", mc_tel=" + mc_tel + "]";
	}
	
}

