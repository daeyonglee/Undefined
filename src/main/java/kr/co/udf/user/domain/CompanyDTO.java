package kr.co.udf.user.domain;

import org.springframework.web.multipart.MultipartFile;

public class CompanyDTO {
	
	private String email;
	private String pw;
	private MultipartFile mainImg;
	private String cn;
	private String nm;
	private String mainNm;
	private String postcode;
	private String addr;
	private String addrdetail;
	private String tel;
	private String companyType;
	private String introduce;
	private String smyIntro;
	
	public CompanyDTO() {}

	public CompanyDTO(String email, String pw, MultipartFile mainImg, String cn, String nm, String mainNm,
			String postcode, String addr, String addrdetail, String tel, String companyType, String introduce,
			String smyIntro) {
		super();
		this.email = email;
		this.pw = pw;
		this.mainImg = mainImg;
		this.cn = cn;
		this.nm = nm;
		this.mainNm = mainNm;
		this.postcode = postcode;
		this.addr = addr;
		this.addrdetail = addrdetail;
		this.tel = tel;
		this.companyType = companyType;
		this.introduce = introduce;
		this.smyIntro = smyIntro;
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

	public MultipartFile getMainImg() {
		return mainImg;
	}

	public void setMainImg(MultipartFile mainImg) {
		this.mainImg = mainImg;
	}

	public String getCn() {
		return cn;
	}

	public void setCn(String cn) {
		this.cn = cn;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public String getMainNm() {
		return mainNm;
	}

	public void setMainNm(String mainNm) {
		this.mainNm = mainNm;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddrdetail() {
		return addrdetail;
	}

	public void setAddrdetail(String addrdetail) {
		this.addrdetail = addrdetail;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
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
		return "CompanyDTO [email=" + email + ", pw=" + pw + ", mainImg=" + mainImg + ", cn=" + cn + ", nm=" + nm
				+ ", mainNm=" + mainNm + ", postcode=" + postcode + ", addr=" + addr + ", addrdetail=" + addrdetail
				+ ", tel=" + tel + ", companyType=" + companyType + ", introduce=" + introduce + ", smyIntro="
				+ smyIntro + "]";
	}
}