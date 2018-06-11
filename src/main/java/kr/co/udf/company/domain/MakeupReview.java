package kr.co.udf.company.domain;

public class MakeupReview {
	
	private int mr_no;
	private int mc_no;
	private int user_no;
	private String mr_content;
	private String mr_point;
	private String regdate;
	private String updatedate;
	
	/** 생성자 */
	public MakeupReview() {
		super();
	}

	public int getMr_no() {
		return mr_no;
	}

	public void setMr_no(int mr_no) {
		this.mr_no = mr_no;
	}

	public int getMc_no() {
		return mc_no;
	}

	public void setMc_no(int mc_no) {
		this.mc_no = mc_no;
	}
	
	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getMr_content() {
		return mr_content;
	}

	public void setMr_content(String mr_content) {
		this.mr_content = mr_content;
	}

	public String getMr_point() {
		return mr_point;
	}

	public void setMr_point(String mr_point) {
		this.mr_point = mr_point;
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
		return "MakeupReview [mr_no=" + mr_no + ", mc_no=" + mc_no + ", user_no=" + user_no + ", mr_content="
				+ mr_content + ", mr_point=" + mr_point + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
}
