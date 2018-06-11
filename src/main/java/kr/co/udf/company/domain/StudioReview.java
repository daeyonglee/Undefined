package kr.co.udf.company.domain;

public class StudioReview {
	
	private int sr_no;
	private int sc_no;
	private int user_no;
	private String sr_content;
	private String sr_point;
	private String regdate;
	private String updatedate;
	
	/** 생성자 */
	public StudioReview() {
		super();
	}

	/** Getter & Setter */
	public int getSr_no() {
		return sr_no;
	}

	public void setSr_no(int sr_no) {
		this.sr_no = sr_no;
	}

	public int getSc_no() {
		return sc_no;
	}

	public void setSc_no(int sc_no) {
		this.sc_no = sc_no;
	}
	
	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getSr_content() {
		return sr_content;
	}

	public void setSr_content(String sr_content) {
		this.sr_content = sr_content;
	}

	public String getSr_point() {
		return sr_point;
	}

	public void setSr_point(String sr_point) {
		this.sr_point = sr_point;
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

	/** toString */
	@Override
	public String toString() {
		return "StudioReview [sr_no=" + sr_no + ", sc_no=" + sc_no + ", user_no=" + user_no + ", sr_content="
				+ sr_content + ", sr_point=" + sr_point + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
