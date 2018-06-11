package kr.co.udf.company.domain;

public class DressReview {
	
	private int dr_no;
	private int dc_no;
	private String dr_content;
	private String dr_point;
	private String regdate;
	private String updatedate;
	
	/** 생성자 */
	public DressReview() {
		super();
	}

	public int getDr_no() {
		return dr_no;
	}

	public void setDr_no(int dr_no) {
		this.dr_no = dr_no;
	}

	public int getDc_no() {
		return dc_no;
	}

	public void setDc_no(int dc_no) {
		this.dc_no = dc_no;
	}

	public String getDr_content() {
		return dr_content;
	}

	public void setDr_content(String dr_content) {
		this.dr_content = dr_content;
	}

	public String getDr_point() {
		return dr_point;
	}

	public void setDr_point(String dr_point) {
		this.dr_point = dr_point;
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
		return "DressReview [dr_no=" + dr_no + ", dc_no=" + dc_no + ", dr_content=" + dr_content + ", dr_point="
				+ dr_point + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}



}
