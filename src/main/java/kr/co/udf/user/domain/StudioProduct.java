package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class StudioProduct {
	
	private BigDecimal spNo;
	private BigDecimal scNo;
	private String spNm;
	private BigDecimal spPrice;
	private String spApvYn;
	private String spTotalYn;
	private String spShootType;
	private String spImage;
	private String regdate;
	private String updatedate;
	
	public StudioProduct() {}

	public StudioProduct(BigDecimal spNo, BigDecimal scNo, String spNm, BigDecimal spPrice, String spApvYn, String spTotalYn,
			String spShootType, String spImage, String regdate, String updatedate) {
		super();
		this.spNo = spNo;
		this.scNo = scNo;
		this.spNm = spNm;
		this.spPrice = spPrice;
		this.spApvYn = spApvYn;
		this.spTotalYn = spTotalYn;
		this.spShootType = spShootType;
		this.spImage = spImage;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public BigDecimal getSpNo() {
		return spNo;
	}

	public void setSpNo(BigDecimal spNo) {
		this.spNo = spNo;
	}

	public BigDecimal getScNo() {
		return scNo;
	}

	public void setScNo(BigDecimal scNo) {
		this.scNo = scNo;
	}

	public String getSpNm() {
		return spNm;
	}

	public void setSpNm(String spNm) {
		this.spNm = spNm;
	}

	public BigDecimal getSpPrice() {
		return spPrice;
	}

	public void setSpPrice(BigDecimal spPrice) {
		this.spPrice = spPrice;
	}

	public String getSpApvYn() {
		return spApvYn;
	}

	public void setSpApvYn(String spApvYn) {
		this.spApvYn = spApvYn;
	}

	public String getSpTotalYn() {
		return spTotalYn;
	}

	public void setSpTotalYn(String spTotalYn) {
		this.spTotalYn = spTotalYn;
	}

	public String getSpShootType() {
		return spShootType;
	}

	public void setSpShootType(String spShootType) {
		this.spShootType = spShootType;
	}

	public String getSpImage() {
		return spImage;
	}

	public void setSpImage(String spImage) {
		this.spImage = spImage;
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

	@Override
	public String toString() {
		return "Product [spNo=" + spNo + ", scNo=" + scNo + ", spNm=" + spNm + ", spPrice=" + spPrice + ", spApvYn="
				+ spApvYn + ", spTotalYn=" + spTotalYn + ", spShootType=" + spShootType + ", spImage=" + spImage
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
}
