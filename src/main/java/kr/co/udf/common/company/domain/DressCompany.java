package kr.co.udf.common.company.domain;

public class DressCompany {

	private int dc_no;
	private String dc_nm;
	private long dc_company_no; // 사업자번호
	private String dc_main_nm; // 회사대표 이름
	private String dc_addr;
	private String dc_main_image;
	private String dc_email;
	private String dc_pw;
	private long dc_tel;
	private String dc_smy_intro;
	private String dc_introduce;
	private String sessionKey;
	private String sessionLimit;
	private String regdate;
	private String updatedate;
	private String sr_point;
	private double avg;
	private int count;
	private int countProduct;
	private long avgPrice;

	/** 생성자 */
	public DressCompany() {
		super();
	}

	public int getDc_no() {
		return dc_no;
	}

	public void setDc_no(int dc_no) {
		this.dc_no = dc_no;
	}

	public String getDc_nm() {
		return dc_nm;
	}

	public void setDc_nm(String dc_nm) {
		this.dc_nm = dc_nm;
	}

	public long getDc_company_no() {
		return dc_company_no;
	}

	public void setDc_company_no(long dc_company_no) {
		this.dc_company_no = dc_company_no;
	}

	public String getDc_main_nm() {
		return dc_main_nm;
	}

	public void setDc_main_nm(String dc_main_nm) {
		this.dc_main_nm = dc_main_nm;
	}

	public String getDc_addr() {
		return dc_addr;
	}

	public void setDc_addr(String dc_addr) {
		this.dc_addr = dc_addr;
	}

	public String getDc_main_image() {
		return dc_main_image;
	}

	public void setDc_main_image(String dc_main_image) {
		this.dc_main_image = dc_main_image;
	}

	public String getDc_email() {
		return dc_email;
	}

	public void setDc_email(String dc_email) {
		this.dc_email = dc_email;
	}

	public String getDc_pw() {
		return dc_pw;
	}

	public void setDc_pw(String dc_pw) {
		this.dc_pw = dc_pw;
	}

	public long getDc_tel() {
		return dc_tel;
	}

	public void setDc_tel(long dc_tel) {
		this.dc_tel = dc_tel;
	}

	public String getDc_smy_intro() {
		return dc_smy_intro;
	}

	public void setcd_smy_intro(String dc_smy_intro) {
		this.dc_smy_intro = dc_smy_intro;
	}

	public String getDc_introduce() {
		return dc_introduce;
	}

	public void setDc_introduce(String dc_introduce) {
		this.dc_introduce = dc_introduce;
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

	public String getSr_point() {
		return sr_point;
	}

	public void setSr_point(String sr_point) {
		this.sr_point = sr_point;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	public long getAvgPrice() {
		return avgPrice;
	}

	public void setAvgPrice(long avgPrice) {
		this.avgPrice = avgPrice;
	}

	public int getCountProduct() {
		return countProduct;
	}

	public void setCountProduct(int countProduct) {
		this.countProduct = countProduct;
	}

	public void setDc_smy_intro(String dc_smy_intro) {
		this.dc_smy_intro = dc_smy_intro;
	}

	@Override
	public String toString() {
		return "DressCompany [dc_no=" + dc_no + ", dc_nm=" + dc_nm + ", dc_company_no=" + dc_company_no
				+ ", dc_main_nm=" + dc_main_nm + ", dc_addr=" + dc_addr + ", dc_main_image=" + dc_main_image
				+ ", dc_email=" + dc_email + ", dc_pw=" + dc_pw + ", dc_tel=" + dc_tel + ", dc_smy_intro="
				+ dc_smy_intro + ", dc_introduce=" + dc_introduce + ", sessionKey=" + sessionKey + ", sessionLimit="
				+ sessionLimit + ", regdate=" + regdate + ", updatedate=" + updatedate + ", sr_point=" + sr_point
				+ ", avg=" + avg + ", count=" + count + ", countProduct=" + countProduct + ", avgPrice=" + avgPrice
				+ "]";
	}

}
