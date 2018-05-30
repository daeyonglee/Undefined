package kr.co.udf.company.domain;

public class Studio {

	private Integer sc_no;
	private String sc_nm;
	private Integer sCompanyno;
	private String sMainnm;
	private String sAddr;
	private String sMainimage;
	private String sEmail;
	private String sPw;
	private Integer sTel;
	private String sIntroduce;
	private String sRegdate;
	private String sUpdatedate;
	
	public Studio() {
	
	}

	public Integer getsc_no() {
		return sc_no;
	}

	public void setsMo(Integer sc_no) {
		this.sc_no = sc_no;
	}

	public String getsc_nm() {
		return sc_nm;
	}

	public void setsc_nm(String sc_nm) {
		this.sc_nm = sc_nm;
	}

	public Integer getsCompanyno() {
		return sCompanyno;
	}

	public void setsCompanyno(Integer sCompanyno) {
		this.sCompanyno = sCompanyno;
	}

	public String getsMainnm() {
		return sMainnm;
	}

	public void setsMainnm(String sMainnm) {
		this.sMainnm = sMainnm;
	}

	public String getsAddr() {
		return sAddr;
	}

	public void setsAddr(String sAddr) {
		this.sAddr = sAddr;
	}

	public String getsMainimage() {
		return sMainimage;
	}

	public void setsMainimage(String sMainimage) {
		this.sMainimage = sMainimage;
	}

	public String getsEmail() {
		return sEmail;
	}

	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}

	public String getsPw() {
		return sPw;
	}

	public void setsPw(String sPw) {
		this.sPw = sPw;
	}

	public Integer getsTel() {
		return sTel;
	}

	public void setsTel(Integer sTel) {
		this.sTel = sTel;
	}

	public String getsIntroduce() {
		return sIntroduce;
	}

	public void setsIntroduce(String sIntroduce) {
		this.sIntroduce = sIntroduce;
	}

	public String getsRegdate() {
		return sRegdate;
	}

	public void setsRegdate(String sRegdate) {
		this.sRegdate = sRegdate;
	}

	public String getsUpdatedate() {
		return sUpdatedate;
	}

	public void setsUpdatedate(String sUpdatedate) {
		this.sUpdatedate = sUpdatedate;
	}

	@Override
	public String toString() {
		return "Studio [sMo=" + sc_no + ", sNm=" + sc_nm + ", sCompanyno=" + sCompanyno + ", sMainnm=" + sMainnm
				+ ", sAddr=" + sAddr + ", sMainimage=" + sMainimage + ", sEmail=" + sEmail + ", sPw=" + sPw + ", sTel="
				+ sTel + ", sIntroduce=" + sIntroduce + ", sRegdate=" + sRegdate + ", sUpdatedate=" + sUpdatedate + "]";
	}


	
	
	
}

