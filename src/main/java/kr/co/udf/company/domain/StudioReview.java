package kr.co.udf.company.domain;

public class StudioReview {
	
	private int no;
	private int companyNo;
	private String content;
	private String point;
	private String regdate;
	private String updatedate;
	
	/** 생성자 */
	public StudioReview() {
		super();
	}

	/** Getter & Setter */
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
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
		return "StudioReview [no=" + no + ", companyNo=" + companyNo + ", content=" + content + ", point=" + point
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
