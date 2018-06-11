package kr.co.udf.user.domain;

import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;

public class DressProductDTO {
	
	private BigDecimal dcNo;
	private String dpNm;
	private BigDecimal dpPrice;
	private String dpStyle;
	private MultipartFile dpImage;
	
	public DressProductDTO() {
		// TODO Auto-generated constructor stub
	}

	public DressProductDTO(BigDecimal dcNo, String dpNm, BigDecimal dpPrice, String dpStyle, MultipartFile dpImage) {
		super();
		this.dcNo = dcNo;
		this.dpNm = dpNm;
		this.dpPrice = dpPrice;
		this.dpStyle = dpStyle;
		this.dpImage = dpImage;
	}

	public BigDecimal getDcNo() {
		return dcNo;
	}

	public void setDcNo(BigDecimal dcNo) {
		this.dcNo = dcNo;
	}

	public String getDpNm() {
		return dpNm;
	}

	public void setDpNm(String dpNm) {
		this.dpNm = dpNm;
	}

	public BigDecimal getDpPrice() {
		return dpPrice;
	}

	public void setDpPrice(BigDecimal dpPrice) {
		this.dpPrice = dpPrice;
	}

	public String getDpStyle() {
		return dpStyle;
	}

	public void setDpStyle(String dpStyle) {
		this.dpStyle = dpStyle;
	}

	public MultipartFile getDpImage() {
		return dpImage;
	}

	public void setDpImage(MultipartFile dpImage) {
		this.dpImage = dpImage;
	}

	@Override
	public String toString() {
		return "DressProductDTO [dcNo=" + dcNo + ", dpNm=" + dpNm + ", dpPrice=" + dpPrice + ", dpStyle=" + dpStyle
				+ ", dpImage=" + dpImage + "]";
	}
}
