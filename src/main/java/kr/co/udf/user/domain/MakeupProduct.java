package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class MakeupProduct {
	
	private BigDecimal mpNo;
	private BigDecimal mcNo;
	private String mpNm;
	private BigDecimal mpPrice;
	private String mpAccYn;
	private String mpFamilyYn;
	private String mpHairYn;
	private String mpImage;
	private String regdate;
	private String updatedate;
	
	public MakeupProduct() {
		// TODO Auto-generated constructor stub
	}

	public MakeupProduct(BigDecimal mpNo, BigDecimal mcNo, String mpNm, BigDecimal mpPrice, String mpAccYn,
			String mpFamilyYn, String mpHairYn, String mpImage, String regdate, String updatedate) {
		super();
		this.mpNo = mpNo;
		this.mcNo = mcNo;
		this.mpNm = mpNm;
		this.mpPrice = mpPrice;
		this.mpAccYn = mpAccYn;
		this.mpFamilyYn = mpFamilyYn;
		this.mpHairYn = mpHairYn;
		this.mpImage = mpImage;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public BigDecimal getMpNo() {
		return mpNo;
	}

	public void setMpNo(BigDecimal mpNo) {
		this.mpNo = mpNo;
	}

	public BigDecimal getMcNo() {
		return mcNo;
	}

	public void setMcNo(BigDecimal mcNo) {
		this.mcNo = mcNo;
	}

	public String getMpNm() {
		return mpNm;
	}

	public void setMpNm(String mpNm) {
		this.mpNm = mpNm;
	}

	public BigDecimal getMpPrice() {
		return mpPrice;
	}

	public void setMpPrice(BigDecimal mpPrice) {
		this.mpPrice = mpPrice;
	}

	public String getMpAccYn() {
		return mpAccYn;
	}

	public void setMpAccYn(String mpAccYn) {
		this.mpAccYn = mpAccYn;
	}

	public String getMpFamilyYn() {
		return mpFamilyYn;
	}

	public void setMpFamilyYn(String mpFamilyYn) {
		this.mpFamilyYn = mpFamilyYn;
	}

	public String getMpHairYn() {
		return mpHairYn;
	}

	public void setMpHairYn(String mpHairYn) {
		this.mpHairYn = mpHairYn;
	}

	public String getMpImage() {
		return mpImage;
	}

	public void setMpImage(String mpImage) {
		this.mpImage = mpImage;
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
		return "MakeupProduct [mpNo=" + mpNo + ", mcNo=" + mcNo + ", mpNm=" + mpNm + ", mpPrice=" + mpPrice
				+ ", mpAccYn=" + mpAccYn + ", mpFamilyYn=" + mpFamilyYn + ", mpHairYn=" + mpHairYn + ", mpImage="
				+ mpImage + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
}
