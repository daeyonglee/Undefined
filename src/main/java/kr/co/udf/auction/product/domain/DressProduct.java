package kr.co.udf.auction.product.domain;

public class DressProduct {

	private int productNo;
	private int companyNo;
	private String productNm;
	private int price;
	private String style; // 드레스 스타일
	private String productImage;
	private String regdate;
	private String updatedate;
	private int discount;
	private int discountPrice;

	/** 생성자 */
	public DressProduct() {}

	public DressProduct(int productNo, int companyNo, String productNm, int price, String style, String productImage,
			String regdate, String updatedate, int discount, int discountPrice) {
		super();
		this.productNo = productNo;
		this.companyNo = companyNo;
		this.productNm = productNm;
		this.price = price;
		this.style = style;
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

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
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
		return "DressProduct [productNo=" + productNo + ", companyNo=" + companyNo + ", productNm=" + productNm
				+ ", price=" + price + ", style=" + style + ", productImage=" + productImage + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + ", discount=" + discount + ", discountPrice=" + discountPrice + "]";
	}


}
