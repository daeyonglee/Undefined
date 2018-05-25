package kr.co.udf.company.domain;

public class Studio {

	private Integer no;
	private String nm;
	private Integer companyNo;
	private String mainNm;
	private String addr;
	private String mainImage;
	private String email;
	private String pw;
	private Integer tel;
	private String introduce;
	private String regdate;
	private String updatedate;
	
	public Studio() {
	
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public Integer getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(Integer companyNo) {
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

	public Integer getTel() {
		return tel;
	}

	public void setTel(Integer tel) {
		this.tel = tel;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
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
		return "Studio [no=" + no + ", nm=" + nm + ", companyNo=" + companyNo + ", mainNm=" + mainNm + ", addr=" + addr
				+ ", mainImage=" + mainImage + ", email=" + email + ", pw=" + pw + ", tel=" + tel + ", introduce="
				+ introduce + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	
}

