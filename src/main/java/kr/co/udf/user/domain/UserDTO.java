package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class UserDTO {
	private BigDecimal no;
	private String email;
	private String pw;
	private String name;
	private BigDecimal tel;
	private String birthday;
	private String postcode;
	private String addr;
	private String addrdetail;
	
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserDTO(BigDecimal no, String email, String pw, String name, BigDecimal tel, String birthday,
			String postcode, String addr, String addrdetail) {
		super();
		this.no = no;
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
		this.birthday = birthday;
		this.postcode = postcode;
		this.addr = addr;
		this.addrdetail = addrdetail;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getTel() {
		return tel;
	}

	public void setTel(BigDecimal tel) {
		this.tel = tel;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
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

	@Override
	public String toString() {
		return "UserDTO [no=" + no + ", email=" + email + ", pw=" + pw + ", name=" + name + ", tel=" + tel
				+ ", birthday=" + birthday + ", postcode=" + postcode + ", addr=" + addr + ", addrdetail=" + addrdetail
				+ "]";
	}

}
