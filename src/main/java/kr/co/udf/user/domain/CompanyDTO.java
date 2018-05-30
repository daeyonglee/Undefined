package kr.co.udf.user.domain;

import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;

/**
 * 회원가입을 위한 DTO 객체
 * @author ldy
 *
 */
public class CompanyDTO {
	
	private BigDecimal no;
	private String email;
	private String pw;
	private MultipartFile file;
	private Integer companyNo;
	private String name;
	private String mainName;
	private String addr;
	private Integer tel;
	private String companyType;
	private String introduce;
	
	public CompanyDTO() {}

	public CompanyDTO(BigDecimal no, String email, String pw, MultipartFile file, Integer companyNo, String name,
			String mainName, String addr, Integer tel, String companyType, String introduce) {
		super();
		this.no = no;
		this.email = email;
		this.pw = pw;
		this.file = file;
		this.companyNo = companyNo;
		this.name = name;
		this.mainName = mainName;
		this.addr = addr;
		this.tel = tel;
		this.companyType = companyType;
		this.introduce = introduce;
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

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public Integer getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(Integer companyNo) {
		this.companyNo = companyNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMainName() {
		return mainName;
	}

	public void setMainName(String mainName) {
		this.mainName = mainName;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public Integer getTel() {
		return tel;
	}

	public void setTel(Integer tel) {
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

	@Override
	public String toString() {
		return "CompanyDTO [no=" + no + ", email=" + email + ", pw=" + pw + ", file=" + file + ", companyNo="
				+ companyNo + ", name=" + name + ", mainName=" + mainName + ", addr=" + addr + ", tel=" + tel
				+ ", companyType=" + companyType + ", introduce=" + introduce + "]";
	}
	
}
