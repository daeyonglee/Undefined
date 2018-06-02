package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class Company {
	
	private BigDecimal no;
	private String nm;
	private BigDecimal companyNo;
	private String mainNm;
	private String addr;
	private String mainImg;
	private String email;
	private String pw;
	private String tel;
	private String introduce;
	private String smyIntro;
	
	public Company() {}
	
	public Company(BigDecimal no, String nm, BigDecimal companyNo, String mainNm, String addr, String mainImg,
			String email, String pw, String tel, String introduce, String smyIntro) {
		super();
		this.no = no;
		this.nm = nm;
		this.companyNo = companyNo;
		this.mainNm = mainNm;
		this.addr = addr;
		this.mainImg = mainImg;
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.introduce = introduce;
		this.smyIntro = smyIntro;
	}

	public BigDecimal getNo() {
		return no;
	}

	public void setNo(BigDecimal no) {
		this.no = no;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public BigDecimal getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(BigDecimal companyNo) {
		this.companyNo = companyNo;
	}

	public String getMainNm() {
		return mainNm;
	}

	public void setMainNm(String mainNm) {
		this.mainNm = mainNm;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getSmyIntro() {
		return smyIntro;
	}

	public void setSmyIntro(String smyIntro) {
		this.smyIntro = smyIntro;
	}

	@Override
	public String toString() {
		return "Company [no=" + no + ", nm=" + nm + ", companyNo=" + companyNo + ", mainNm=" + mainNm + ", addr=" + addr
				+ ", mainImg=" + mainImg + ", email=" + email + ", pw=" + pw + ", tel=" + tel + ", introduce="
				+ introduce + ", smyIntro=" + smyIntro + "]";
	}
}
