package kr.co.udf.common.product.domain;

public class MakeupProduct {
	private int mp_no;
	private int mc_no;
	private String mp_nm;
	private int mp_price;
	private char mp_acc_yn; // 악세사리 여부
	private char mp_family_yn; // 가족 포함 여부
	private char mp_hair_yn; // 헤어 여부
	private String mp_image;
	private String regdate;
	private String updatedate;

	/** 생성자 */
	public MakeupProduct() {
		super();
	}

	/** Getter & Setter */
	public int getMp_no() {
		return mp_no;
	}

	public void setMp_no(int mp_no) {
		this.mp_no = mp_no;
	}

	public int getMc_no() {
		return mc_no;
	}

	public void setMc_no(int mc_no) {
		this.mc_no = mc_no;
	}

	public String getMp_nm() {
		return mp_nm;
	}

	public void setMp_nm(String mp_nm) {
		this.mp_nm = mp_nm;
	}

	public int getMp_price() {
		return mp_price;
	}

	public void setMp_price(int mp_price) {
		this.mp_price = mp_price;
	}

	public char getMp_acc_yn() {
		return mp_acc_yn;
	}

	public void setMp_acc_yn(char mp_acc_yn) {
		this.mp_acc_yn = mp_acc_yn;
	}

	public char getMp_family_yn() {
		return mp_family_yn;
	}

	public void setMp_family_yn(char mp_family_yn) {
		this.mp_family_yn = mp_family_yn;
	}

	public char getMp_hair_yn() {
		return mp_hair_yn;
	}

	public void setMp_hair_yn(char mp_hair_yn) {
		this.mp_hair_yn = mp_hair_yn;
	}

	public String getMp_image() {
		return mp_image;
	}

	public void setMp_image(String mp_image) {
		this.mp_image = mp_image;
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
		return "MakeupProduct [mp_no=" + mp_no + ", mc_no=" + mc_no + ", mp_nm=" + mp_nm + ", mp_price=" + mp_price
				+ ", mp_acc_yn=" + mp_acc_yn + ", mp_family_yn=" + mp_family_yn + ", mp_hair_yn=" + mp_hair_yn
				+ ", mp_image=" + mp_image + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
