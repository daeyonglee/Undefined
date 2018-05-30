package kr.co.udf.company.domain;

public class Makeup {

	private int mNo;
	private String mNm;
	private int mCompanyno;
	private String mMainnm;
	private String mAddr;
	private String mMainimage;
	private String mEmail;
	private String mPw;
	private int mTel;
	private String mIntroduce;
	private String mRegdate;
	private String mUpdatedate;
	
	public Makeup() {
		
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getmNm() {
		return mNm;
	}

	public void setmNm(String mNm) {
		this.mNm = mNm;
	}

	public int getmCompanyno() {
		return mCompanyno;
	}

	public void setmCompanyno(int mCompanyno) {
		this.mCompanyno = mCompanyno;
	}

	public String getmMainnm() {
		return mMainnm;
	}

	public void setmMainnm(String mMainnm) {
		this.mMainnm = mMainnm;
	}

	public String getmAddr() {
		return mAddr;
	}

	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}

	public String getmMainimage() {
		return mMainimage;
	}

	public void setmMainimage(String mMainimage) {
		this.mMainimage = mMainimage;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmPw() {
		return mPw;
	}

	public void setmPw(String mPw) {
		this.mPw = mPw;
	}

	public int getmTel() {
		return mTel;
	}

	public void setmTel(int mTel) {
		this.mTel = mTel;
	}

	public String getmIntroduce() {
		return mIntroduce;
	}

	public void setmIntroduce(String mIntroduce) {
		this.mIntroduce = mIntroduce;
	}

	public String getmRegdate() {
		return mRegdate;
	}

	public void setmRegdate(String mRegdate) {
		this.mRegdate = mRegdate;
	}

	public String getmUpdatedate() {
		return mUpdatedate;
	}

	public void setmUpdatedate(String mUpdatedate) {
		this.mUpdatedate = mUpdatedate;
	}

	@Override
	public String toString() {
		return "Makeup [mNo=" + mNo + ", mNm=" + mNm + ", mCompanyno=" + mCompanyno + ", mMainnm=" + mMainnm
				+ ", mAddr=" + mAddr + ", mMainimage=" + mMainimage + ", mEmail=" + mEmail + ", mPw=" + mPw + ", mTel="
				+ mTel + ", mIntroduce=" + mIntroduce + ", mRegdate=" + mRegdate + ", mUpdatedate=" + mUpdatedate + "]";
	}
	
	
}
