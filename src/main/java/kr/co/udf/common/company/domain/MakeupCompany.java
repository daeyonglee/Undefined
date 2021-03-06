package kr.co.udf.common.company.domain;

import java.util.ArrayList;

public class MakeupCompany {

	private int mc_no;
	private String mc_nm;
	private long mc_company_no; // 사업자번호
	private String mc_main_nm; // 회사대표 이름
	private String mc_addr;
	private String mc_main_image;
	private String mc_email;
	private String mc_pw;
	private long mc_tel;
	private String mc_smy_intro;
	private String mc_introduce;
	private String sessionKey;
	private String sessionLimit;
	private String regdate;
	private String updatedate;
	private String mr_point;
	private double avg;
	private int count;
	private int countProduct;
	private long avgPrice;
	private ArrayList<String> productImg;

	/** 생성자 */
	public MakeupCompany() {
		super();
	}

	public int getMc_no() {
		return mc_no;
	}

	public void setMc_no(int mc_no) {
		this.mc_no = mc_no;
	}

	public String getMc_nm() {
		return mc_nm;
	}

	public void setMc_nm(String mc_nm) {
		this.mc_nm = mc_nm;
	}

	public long getMc_company_no() {
		return mc_company_no;
	}

	public void setMc_company_no(long mc_company_no) {
		this.mc_company_no = mc_company_no;
	}

	public String getMc_main_nm() {
		return mc_main_nm;
	}

	public void setMc_main_nm(String mc_main_nm) {
		this.mc_main_nm = mc_main_nm;
	}

	public String getMc_addr() {
		return mc_addr;
	}

	public void setMc_addr(String mc_addr) {
		this.mc_addr = mc_addr;
	}

	public String getMc_main_image() {
		return mc_main_image;
	}

	public void setMc_main_image(String mc_main_image) {
		this.mc_main_image = mc_main_image;
	}

	public String getMc_email() {
		return mc_email;
	}

	public void setMc_email(String mc_email) {
		this.mc_email = mc_email;
	}

	public String getMc_pw() {
		return mc_pw;
	}

	public void setMc_pw(String mc_pw) {
		this.mc_pw = mc_pw;
	}

	public long getMc_tel() {
		return mc_tel;
	}

	public void setMc_tel(long mc_tel) {
		this.mc_tel = mc_tel;
	}

	public String getMc_smy_intro() {
		return mc_smy_intro;
	}

	public void setMc_smy_intro(String mc_smy_intro) {
		this.mc_smy_intro = mc_smy_intro;
	}

	public String getMc_introduce() {
		return mc_introduce;
	}

	public void setMc_introduce(String mc_introduce) {
		this.mc_introduce = mc_introduce;
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

	public String getMr_point() {
		return mr_point;
	}

	public void setMr_point(String mr_point) {
		this.mr_point = mr_point;
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
		return "MakeupCompany [mc_no=" + mc_no + ", mc_nm=" + mc_nm + ", mc_company_no=" + mc_company_no
				+ ", mc_main_nm=" + mc_main_nm + ", mc_addr=" + mc_addr + ", mc_main_image=" + mc_main_image
				+ ", mc_email=" + mc_email + ", mc_pw=" + mc_pw + ", mc_tel=" + mc_tel + ", mc_smy_intro="
				+ mc_smy_intro + ", mc_introduce=" + mc_introduce + ", sessionKey=" + sessionKey + ", sessionLimit="
				+ sessionLimit + ", regdate=" + regdate + ", updatedate=" + updatedate + ", mr_point=" + mr_point
				+ ", avg=" + avg + ", count=" + count + ", countProduct=" + countProduct + ", avgPrice=" + avgPrice
				+ ", productImg=" + productImg + "]";
	}

}
