package kr.co.udf.user.domain;

import java.math.BigDecimal;

/**
 * 로그인 DTO
 * @author ldy
 *
 */
public class Login {

	private BigDecimal no;
	private String email;
	private String pw;
	private String nm;
	private boolean useCookie;
	private String role;
	
	public Login() {}

	public Login(BigDecimal no, String email, String pw, String nm, boolean useCookie, String role) {
		super();
		this.no = no;
		this.email = email;
		this.pw = pw;
		this.nm = nm;
		this.useCookie = useCookie;
		this.role = role;
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

	public boolean isUseCookie() {
		return useCookie;
	}

	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Login [no=" + no + ", email=" + email + ", pw=" + pw + ", nm=" + nm + ", useCookie=" + useCookie
				+ ", role=" + role + "]";
	}
}