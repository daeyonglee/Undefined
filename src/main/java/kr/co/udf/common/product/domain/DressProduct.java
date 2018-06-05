package kr.co.udf.common.product.domain;

public class DressProduct {

	private int dp_no;
	private int dc_no;
	private String dp_nm;
	private int dp_price;
	private String dp_style; // 드레스 스타일
	private String dp_image;
	private String regdate;
	private String updatedate;

	/** 생성자 */
	public DressProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/** Getter & Setter */
	public int getDp_no() {
		return dp_no;
	}

	public void setDp_no(int dp_no) {
		this.dp_no = dp_no;
	}

	public int getDc_no() {
		return dc_no;
	}

	public void setDc_no(int dc_no) {
		this.dc_no = dc_no;
	}

	public String getDp_nm() {
		return dp_nm;
	}

	public void setDp_name(String dp_nm) {
		this.dp_nm = dp_nm;
	}

	public int getDp_price() {
		return dp_price;
	}

	public void setDp_price(int dp_price) {
		this.dp_price = dp_price;
	}

	public String getDp_style() {
		return dp_style;
	}

	public void setDp_style(String dp_style) {
		this.dp_style = dp_style;
	}

	public String getDp_image() {
		return dp_image;
	}

	public void setDp_image(String dp_image) {
		this.dp_image = dp_image;
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
		return "DressProduct [dp_no=" + dp_no + ", dc_no=" + dc_no + ", dp_nm=" + dp_nm+ ", dp_price=" + dp_price
				+ ", dp_style=" + dp_style + ", dp_image=" + dp_image + ", regdate=" + regdate + ", updatedate="
				+ updatedate + "]";
	}
}
