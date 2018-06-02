package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class User {

	private BigDecimal no;
	private String email;
	private String pw;
	private String nm;
	private String birthday;
	private String addr;
	private BigDecimal tel;
	private Integer point;
	private String regdate;
	private String updatedate;
	
	public User() {}

	public User(BigDecimal no, String email, String pw, String nm, String birthday, String addr, BigDecimal tel,
			Integer point, String regdate, String updatedate) {
		super();
		this.no = no;
		this.email = email;
		this.pw = pw;
		this.nm = nm;
		this.birthday = birthday;
		this.addr = addr;
		this.tel = tel;
		this.point = point;
		this.regdate = regdate;
		this.updatedate = updatedate;
	}

	public BigDecimal getNo() {
		return no;
	}

	public void setNo(BigDecimal no) {
		this.no = no;
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

	public String getNm() {
		return nm;
	}

	public void setNm(String nm) {
		this.nm = nm;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public BigDecimal getTel() {
		return tel;
	}

	public void setTel(BigDecimal tel) {
		this.tel = tel;
	}

	public Integer getPoint() {
		return point;
	}

	public void setPoint(Integer point) {
		this.point = point;
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
		return "User [no=" + no + ", email=" + email + ", pw=" + pw + ", nm=" + nm + ", birthday=" + birthday
				+ ", addr=" + addr + ", tel=" + tel + ", point=" + point + ", regdate=" + regdate + ", updatedate="
				+ updatedate + "]";
	}
}
