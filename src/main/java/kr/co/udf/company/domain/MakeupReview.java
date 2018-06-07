package kr.co.udf.company.domain;

public class MakeupReview {
	
	private int mrNo;
	private int mcNo;
	private String content;
	private String point;
	private String regdate;
	private String updatedate;
	
	/** 생성자 */
	public MakeupReview() {
		super();
	}

	/** Getter & Setter */
	public int getMrNo() {
		return mrNo;
	}

	public void setMrNo(int mrNo) {
		this.mrNo = mrNo;
	}

	public int getMcNo() {
		return mcNo;
	}

	public void setMcNo(int mcNo) {
		this.mcNo = mcNo;
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
		return "MakeupReview [mrNo=" + mrNo + ", mcNo=" + mcNo + ", content=" + content + ", point=" + point
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
