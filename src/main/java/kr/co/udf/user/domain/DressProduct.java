package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class DressProduct {
	
	private BigDecimal dpNo;
	private BigDecimal dcNo;
	private String dpNm;
	private BigDecimal dpPrice;
	private String dpStyle;
	private String dpImage;
	private String regdate;
	private String updatedate;
	
	public DressProduct() {
		// TODO Auto-generated constructor stub
	}

	public DressProduct(BigDecimal dpNo, BigDecimal dcNo, String dpNm, BigDecimal dpPrice, String dpStyle,
			String dpImage, String regdate, String updatedate) {
		super();
		this.dpNo = dpNo;
		this.dcNo = dcNo;
		this.dpNm = dpNm;
		this.dpPrice = dpPrice;
		this.dpStyle = dpStyle;
		this.dpImage = dpImage;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public BigDecimal getDpNo() {
		return dpNo;
	}

	public void setDpNo(BigDecimal dpNo) {
		this.dpNo = dpNo;
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

	public String getDpImage() {
		return dpImage;
	}

	public void setDpImage(String dpImage) {
		this.dpImage = dpImage;
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
		return "DressProduct [dpNo=" + dpNo + ", dcNo=" + dcNo + ", dpNm=" + dpNm + ", dpPrice=" + dpPrice
				+ ", dpStyle=" + dpStyle + ", dpImage=" + dpImage + ", regdate=" + regdate + ", updatedate="
				+ updatedate + "]";
	}
}
