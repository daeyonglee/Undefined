package kr.co.udf.common.product.domain;

public class StudioProduct {

	private int productNo;
	private int companyNo;
	private int price;
	private String image;
	private char apv;
	private char total;
	private char shoot;
	private String regdate;
	private String updatedate;

	
	/** 생성자 */
	public StudioProduct() {
		super();
	}
	
	/** Getter & Setter */
	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public char getApv() {
		return apv;
	}

	public void setApv(char apv) {
		this.apv = apv;
	}

	public char getTotal() {
		return total;
	}

	public void setTotal(char total) {
		this.total = total;
	}

	public char getShoot() {
		return shoot;
	}

	public void setShoot(char shoot) {
		this.shoot = shoot;
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
		return "StudioProduct [productNo=" + productNo + ", companyNo=" + companyNo + ", price=" + price + ", image="
				+ image + ", apv=" + apv + ", total=" + total + ", shoot=" + shoot + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}

}
