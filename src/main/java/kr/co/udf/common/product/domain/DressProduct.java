package kr.co.udf.common.product.domain;

public class DressProduct {
	
	private int productNo;
	private int companyNo;
	private int price;
	private String style;		//드레스 스타일
	private String image;
	private String regdate;
	private String updatedate;

	
	/** 생성자 */
	public DressProduct() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
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
		return "DressProduct [productNo=" + productNo + ", companyNo=" + companyNo + ", style=" + style + ", price="
				+ price + ", image=" + image + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}

}
