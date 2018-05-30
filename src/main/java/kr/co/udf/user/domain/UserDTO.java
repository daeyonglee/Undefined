package kr.co.udf.user.domain;

import java.math.BigDecimal;

public class UserDTO {

	private BigDecimal no;
	private String email;
	private String pw;
	private String birthday;
	private String name;
	private String postcode;
	private String addr;
	private String addrdetail;
	private Integer tel;
	private Integer point;
	private String regdate;
	private String updatedate;
	
	public UserDTO() {}

	public UserDTO(BigDecimal no, String email, String pw, String birthday, String name, String postcode, String addr,
			String addrdetail, Integer tel, Integer point, String regdate, String updatedate) {
		super();
		this.no = no;
		this.email = email;
		this.pw = pw;
		this.birthday = birthday;
		this.name = name;
		this.postcode = postcode;
		this.addr = addr;
		this.addrdetail = addrdetail;
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

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Integer getTel() {
		return tel;
	}

	public void setTel(Integer tel) {
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
		return "UserDTO [no=" + no + ", email=" + email + ", pw=" + pw + ", birthday=" + birthday + ", name=" + name
				+ ", postcode=" + postcode + ", addr=" + addr + ", addrdetail=" + addrdetail + ", tel=" + tel
				+ ", point=" + point + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
}
