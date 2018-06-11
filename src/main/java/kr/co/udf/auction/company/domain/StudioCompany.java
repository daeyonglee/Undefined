package kr.co.udf.auction.company.domain;

public class StudioCompany {

	private int companyNo;
	private String nm;
	private int regNo; // 사업자번호
	private String headName; // 회사대표 이름
	private String addr;
	private String mainImage;
	private String email;
	private String pw;
	private int tel;
	private String introduce;
	private String sessionKey;
	private String sessionLimit;
	private String regdate;
	private String updatedate;
	
	
	public StudioCompany() {}


	public int getCompanyNo() {
		return companyNo;
	}


	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}


	public String getNm() {
		return nm;
	}


	public void setNm(String nm) {
		this.nm = nm;
	}


	public int getRegNo() {
		return regNo;
	}


	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}


	public String getHeadName() {
		return headName;
	}


	public void setHeadName(String headName) {
		this.headName = headName;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getMainImage() {
		return mainImage;
	}


	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
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


	public int getTel() {
		return tel;
	}


	public void setTel(int tel) {
		this.tel = tel;
	}


	public String getIntroduce() {
		return introduce;
	}


	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}


	public String getSessionKey() {
		return sessionKey;
	}


	public void setSessionKey(String sessionKey) {
		this.sessionKey = sessionKey;
	}


	public String getSessionLimit() {
		return sessionLimit;
	}


	public void setSessionLimit(String sessionLimit) {
		this.sessionLimit = sessionLimit;
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
		return "DressCompany [companyNo=" + companyNo + ", nm=" + nm + ", regNo=" + regNo + ", headName=" + headName
				+ ", addr=" + addr + ", mainImage=" + mainImage + ", email=" + email + ", pw=" + pw + ", tel=" + tel
				+ ", introduce=" + introduce + ", sessionKey=" + sessionKey + ", sessionLimit=" + sessionLimit
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
}
