package kr.co.udf.auction.product.domain;

public class StudioProduct {

	private int productNo;
	private int companyNo;
	private String productNm;
	private int price;
	private char apvYn;
	private char totalYn;
	private char shootType;
	private String productImage;
	private String regdate;
	private String updatedate;
	private String discount;
	private String discountPrice;

	public StudioProduct() {}

	public StudioProduct(int productNo, int companyNo, String productNm, int price, char apvYn, char totalYn,
			char shootType, String productImage, String regdate, String updatedate, String discount,
			String discountPrice) {
		super();
		this.productNo = productNo;
		this.companyNo = companyNo;
		this.productNm = productNm;
		this.price = price;
		this.apvYn = apvYn;
		this.totalYn = totalYn;
		this.shootType = shootType;
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

	public char getApvYn() {
		return apvYn;
	}

	public void setApvYn(char apvYn) {
		this.apvYn = apvYn;
	}

	public char getTotalYn() {
		return totalYn;
	}

	public void setTotalYn(char totalYn) {
		this.totalYn = totalYn;
	}

	public char getShootType() {
		return shootType;
	}

	public void setShootType(char shootType) {
		this.shootType = shootType;
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

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(String discountPrice) {
		this.discountPrice = discountPrice;
	}

	@Override
	public String toString() {
		return "StudioProduct [productNo=" + productNo + ", companyNo=" + companyNo + ", productNm=" + productNm
				+ ", price=" + price + ", apvYn=" + apvYn + ", totalYn=" + totalYn + ", shootType=" + shootType
				+ ", productImage=" + productImage + ", regdate=" + regdate + ", updatedate=" + updatedate
				+ ", discount=" + discount + ", discountPrice=" + discountPrice + "]";
	}


}
