package kr.co.udf.common.product.domain;

public class StudioProduct {

	private int sp_no;
	private int sc_no;
	private String sp_nm;
	private int sp_price;
	private char sp_apv_yn;
	private char sp_total_yn;
	private String sp_shoot_type;
	private String sp_image;
	private String regdate;
	private String updatedate;

	/** 생성자 */
	public StudioProduct() {
		super();
	}

	/** Getter & Setter */
	public int getSp_no() {
		return sp_no;
	}

	public void setSp_no(int sp_no) {
		this.sp_no = sp_no;
	}

	public int getSc_no() {
		return sc_no;
	}

	public void setSc_no(int sc_no) {
		this.sc_no = sc_no;
	}

	public String getSp_nm() {
		return sp_nm;
	}

	public void setSp_nm(String sp_nm) {
		this.sp_nm = sp_nm;
	}

	public int getSp_price() {
		return sp_price;
	}

	public void setSp_price(int sp_price) {
		this.sp_price = sp_price;
	}

	public char getSp_apv_yn() {
		return sp_apv_yn;
	}

	public void setSp_apv_yn(char sp_apv_yn) {
		this.sp_apv_yn = sp_apv_yn;
	}

	public char getSp_total_yn() {
		return sp_total_yn;
	}

	public void setSp_total_yn(char sp_total_yn) {
		this.sp_total_yn = sp_total_yn;
	}

	public String getSp_shoot_type() {
		return sp_shoot_type;
	}

	public void setSp_shoot_type(String sp_shoot_type) {
		this.sp_shoot_type = sp_shoot_type;
	}

	public String getSp_image() {
		return sp_image;
	}

	public void setSp_image(String sp_image) {
		this.sp_image = sp_image;
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
		return "StudioProduct [sp_no=" + sp_no + ", sc_no=" + sc_no + ", sp_nm=" + sp_nm + ", sp_price=" + sp_price
				+ ", sp_apv_yn=" + sp_apv_yn + ", sp_total_yn=" + sp_total_yn + ", sp_shoot_type=" + sp_shoot_type
				+ ", sp_image=" + sp_image + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
