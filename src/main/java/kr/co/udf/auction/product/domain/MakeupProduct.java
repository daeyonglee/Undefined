package kr.co.udf.auction.product.domain;

public class MakeupProduct {
	private int productNo;
	private int companyNo;
	private String productNm;
	private int price;
	private char accYn; // 악세사리 여부
	private char familyYn; // 가족 포함 여부
	private char hairYn; // 헤어 여부
	private String productImage;
	private String regdate;
	private String updatedate;
	private int discount;
	private int discountPrice;

	/** 생성자 */
	public MakeupProduct() {}

	public MakeupProduct(int productNo, int companyNo, String productNm, int price, char accYn, char familyYn,
			char hairYn, String productImage, String regdate, String updatedate, int discount, int discountPrice) {
		super();
		this.productNo = productNo;
		this.companyNo = companyNo;
		this.productNm = productNm;
		this.price = price;
		this.accYn = accYn;
		this.familyYn = familyYn;
		this.hairYn = hairYn;
		this.productImage = productImage;
		this.regdate = regdate;
		this.updatedate = updatedate;
		this.discount = discount;
		this.discountPrice = discountPrice;
	}

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

	public String getProductNm() {
		return productNm;
	}

	public void setProductNm(String productNm) {
		this.productNm = productNm;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public char getAccYn() {
		return accYn;
	}

	public void setAccYn(char accYn) {
		this.accYn = accYn;
	}

	public char getFamilyYn() {
		return familyYn;
	}

	public void setFamilyYn(char familyYn) {
		this.familyYn = familyYn;
	}

	public char getHairYn() {
		return hairYn;
	}

	public void setHairYn(char hairYn) {
		this.hairYn = hairYn;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
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

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public int getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}

	@Override
	public String toString() {
		return "MakeupProduct [productNo=" + productNo + ", companyNo=" + companyNo + ", productNm=" + productNm
				+ ", price=" + price + ", accYn=" + accYn + ", familyYn=" + familyYn + ", hairYn=" + hairYn
				+ ", productImage=" + productImage + ", regdate=" + regdate + ", updatedate=" + updatedate
				+ ", discount=" + discount + ", discountPrice=" + discountPrice + "]";
	}


}
