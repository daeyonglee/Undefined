package kr.co.udf.company.domain;

public class DressReview {
	
	private int drNo;
	private int dcNo;
	private String content;
	private String point;
	private String regdate;
	private String updatedate;
	
	/** 생성자 */
	public DressReview() {
		super();
	}

	/** Getter & Setter */
	public int getDrNo() {
		return drNo;
	}

	public void setDrNo(int drNo) {
		this.drNo = drNo;
	}

	public int getDcNo() {
		return dcNo;
	}

	public void setDcNo(int dcNo) {
		this.dcNo = dcNo;
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
		return "DressReview [drNo=" + drNo + ", dcNo=" + dcNo + ", content=" + content + ", point=" + point
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
