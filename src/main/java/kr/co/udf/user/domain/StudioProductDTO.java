package kr.co.udf.user.domain;

import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;

public class StudioProductDTO {
	
	private BigDecimal scNo;
	private String spNm;
	private BigDecimal spPrice;
	private String spApvYn;
	private String spTotalYn;
	private String spShootType;
	private MultipartFile spImage;
	
	public StudioProductDTO() {}

	public StudioProductDTO(BigDecimal scNo, String spNm, BigDecimal spPrice, String spApvYn, String spTotalYn,
			String spShootType, MultipartFile spImage) {
		super();
		this.scNo = scNo;
		this.spNm = spNm;
		this.spPrice = spPrice;
		this.spApvYn = spApvYn;
		this.spTotalYn = spTotalYn;
		this.spShootType = spShootType;
		this.spImage = spImage;
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

	public MultipartFile getSpImage() {
		return spImage;
	}

	public void setSpImage(MultipartFile spImage) {
		this.spImage = spImage;
	}

	@Override
	public String toString() {
		return "StudioProductDTO [scNo=" + scNo + ", spNm=" + spNm + ", spPrice=" + spPrice + ", spApvYn=" + spApvYn
				+ ", spTotalYn=" + spTotalYn + ", spShootType=" + spShootType + ", spImage=" + spImage + "]";
	}
}
