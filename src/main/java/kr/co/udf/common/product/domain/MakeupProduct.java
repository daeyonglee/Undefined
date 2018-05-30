package kr.co.udf.common.product.domain;

public class MakeupProduct {
	private int productNo;
	private int companyNo;
	private int price;
	private char acc; // 악세사리 여부
	private char family; // 가족 포함 여부
	private char hair; // 헤어 여부
	private String regdate;
	private String updatedate;

	/** 생성자 */
	public MakeupProduct() {
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

	public char getAcc() {
		return acc;
	}

	public void setAcc(char acc) {
		this.acc = acc;
	}

	public char getFamily() {
		return family;
	}

	public void setFamily(char family) {
		this.family = family;
	}

	public char getHair() {
		return hair;
	}

	public void setHair(char hair) {
		this.hair = hair;
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
		return "MakeupProduct [productNo=" + productNo + ", companyNo=" + companyNo + ", price=" + price + ", acc="
				+ acc + ", family=" + family + ", hair=" + hair + ", regdate=" + regdate + ", updatedate=" + updatedate
				+ "]";
	}

}
