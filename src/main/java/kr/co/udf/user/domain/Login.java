package kr.co.udf.user.domain;

/**
 * 로그인 DTO
 * @author ldy
 *
 */
public class Login {

	private String email;
	private String pw;
	private boolean useCookie;
	
	public Login() {}
	
	public Login(String email, String pw, boolean useCookie) {
		super();
		this.email = email;
		this.pw = pw;
		this.useCookie = useCookie;
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

	public boolean isUseCookie() {
		return useCookie;
	}

	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}

	@Override
	public String toString() {
		return "Login [email=" + email + ", pw=" + pw + ", useCookie=" + useCookie + "]";
	}
}
