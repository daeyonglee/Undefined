package kr.co.udf.user.domain;

import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;

public class MakeupProductDTO {
	
	private BigDecimal mcNo;
	private String mpNm;
	private BigDecimal mpPrice;
	private String mpAccYn;
	private String mpFamilyYn;
	private String mpHairYn;
	private MultipartFile mpImage;
	
	public MakeupProductDTO() {
		// TODO Auto-generated constructor stub
	}

	public MakeupProductDTO(BigDecimal mcNo, String mpNm, BigDecimal mpPrice, String mpAccYn, String mpFamilyYn,
			String mpHairYn, MultipartFile mpImage) {
		super();
		this.mcNo = mcNo;
		this.mpNm = mpNm;
		this.mpPrice = mpPrice;
		this.mpAccYn = mpAccYn;
		this.mpFamilyYn = mpFamilyYn;
		this.mpHairYn = mpHairYn;
		this.mpImage = mpImage;
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

	public MultipartFile getMpImage() {
		return mpImage;
	}

	public void setMpImage(MultipartFile mpImage) {
		this.mpImage = mpImage;
	}

	@Override
	public String toString() {
		return "MakeupProductDTO [mcNo=" + mcNo + ", mpNm=" + mpNm + ", mpPrice=" + mpPrice + ", mpAccYn=" + mpAccYn
				+ ", mpFamilyYn=" + mpFamilyYn + ", mpHairYn=" + mpHairYn + ", mpImage=" + mpImage + "]";
	}
}
