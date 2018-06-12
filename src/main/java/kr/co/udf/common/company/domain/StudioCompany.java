package kr.co.udf.common.company.domain;

import java.util.ArrayList;



public class StudioCompany {

	private int sc_no;
	private String sc_nm;
	private long sc_company_no; // 사업자번호
	private String sc_main_nm; // 회사대표 이름
	private String sc_addr;
	private String sc_main_image;
	private String sc_email;
	private String sc_pw;
	private long sc_tel;
	private String sc_smy_intro;
	private String sc_introduce;
	private String sessionKey;
	private String sessionLimit;
	private String regdate;
	private String updatedate;
	private String sr_point;
	private double avg;
	private int count;
	private int countProduct;
	private long avgPrice;
	private ArrayList<String> productImg;

	/** 생성자 */
	public StudioCompany() {
		super();
	}

	/** Getter & Setter */
	public int getSc_no() {
		return sc_no;
	}

	public void setSc_no(int sc_no) {
		this.sc_no = sc_no;
	}

	public String getSc_nm() {
		return sc_nm;
	}

	public void setSc_nm(String sc_nm) {
		this.sc_nm = sc_nm;
	}

	public long getSc_company_no() {
		return sc_company_no;
	}

	public void setSc_company_no(long sc_company_no) {
		this.sc_company_no = sc_company_no;
	}

	public String getSc_main_nm() {
		return sc_main_nm;
	}

	public void setSc_main_nm(String sc_main_nm) {
		this.sc_main_nm = sc_main_nm;
	}

	public String getSc_addr() {
		return sc_addr;
	}

	public void setSc_addr(String sc_addr) {
		this.sc_addr = sc_addr;
	}

	public String getSc_main_image() {
		return sc_main_image;
	}

	public void setSc_main_image(String sc_main_image) {
		this.sc_main_image = sc_main_image;
	}

	public String getSc_email() {
		return sc_email;
	}

	public void setSc_email(String sc_email) {
		this.sc_email = sc_email;
	}

	public String getSc_pw() {
		return sc_pw;
	}

	public void setSc_pw(String sc_pw) {
		this.sc_pw = sc_pw;
	}

	public long getSc_tel() {
		return sc_tel;
	}

	public void setSc_tel(long sc_tel) {
		this.sc_tel = sc_tel;
	}

	public String getSc_introduce() {
		return sc_introduce;
	}

	public void setSc_introduce(String sc_introduce) {
		this.sc_introduce = sc_introduce;
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

	public String getSc_smy_intro() {
		return sc_smy_intro;
	}

	public void setSc_smy_intro(String sc_smy_intro) {
		this.sc_smy_intro = sc_smy_intro;
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

	public int getCountProduct() {
		return countProduct;
	}

	public void setCountProduct(int countProduct) {
		this.countProduct = countProduct;
	}

	public long getAvgPrice() {
		return avgPrice;
	}
	
	public void setAvgPrice(long avgPrice) {
		this.avgPrice = avgPrice;
	}

	public ArrayList<String> getProductImg() {
		return productImg;
	}

	public void setProductImg(ArrayList<String> productImg) {
		this.productImg = productImg;
	}

	@Override
	public String toString() {
		return "StudioCompany [sc_no=" + sc_no + ", sc_nm=" + sc_nm + ", sc_company_no=" + sc_company_no
				+ ", sc_main_nm=" + sc_main_nm + ", sc_addr=" + sc_addr + ", sc_main_image=" + sc_main_image
				+ ", sc_email=" + sc_email + ", sc_pw=" + sc_pw + ", sc_tel=" + sc_tel + ", sc_smy_intro="
				+ sc_smy_intro + ", sc_introduce=" + sc_introduce + ", sessionKey=" + sessionKey + ", sessionLimit="
				+ sessionLimit + ", regdate=" + regdate + ", updatedate=" + updatedate + ", sr_point=" + sr_point
				+ ", avg=" + avg + ", count=" + count + ", countProduct=" + countProduct + ", avgPrice=" + avgPrice
				+ ", productImg=" + productImg + "]";
	}

}