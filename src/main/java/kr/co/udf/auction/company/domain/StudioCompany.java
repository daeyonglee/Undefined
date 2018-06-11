package kr.co.udf.auction.company.domain;

import java.math.BigDecimal;

public class StudioCompany {

   private int companyNo;
   private String nm;
   private int regNo; // 사업자번호
   private String headName; // 회사대표 이름
   private String addr;
   private String mainImage;
   private String email;
   private String pw;
   private BigDecimal tel;
   private String introduce;
   private String sessionKey;
   private String sessionLimit;
   private String regdate;
   private String updatedate;
   
   
   public StudioCompany() {}


   public StudioCompany(int companyNo, String nm, int regNo, String headName, String addr, String mainImage,
         String email, String pw, BigDecimal tel, String introduce, String sessionKey, String sessionLimit,
         String regdate, String updatedate) {
      super();
      this.companyNo = companyNo;
      this.nm = nm;
      this.regNo = regNo;
      this.headName = headName;
      this.addr = addr;
      this.mainImage = mainImage;
      this.email = email;
      this.pw = pw;
      this.tel = tel;
      this.introduce = introduce;
      this.sessionKey = sessionKey;
      this.sessionLimit = sessionLimit;
      this.regdate = regdate;
      this.updatedate = updatedate;
   }


   public int getCompanyNo() {
      return companyNo;
   }


   public void setCompanyNo(int companyNo) {
      this.companyNo = companyNo;
   }


   public String getNm() {
      return nm;
   }


   public void setNm(String nm) {
      this.nm = nm;
   }


   public int getRegNo() {
      return regNo;
   }


   public void setRegNo(int regNo) {
      this.regNo = regNo;
   }


   public String getHeadName() {
      return headName;
   }


   public void setHeadName(String headName) {
      this.headName = headName;
   }


   public String getAddr() {
      return addr;
   }


   public void setAddr(String addr) {
      this.addr = addr;
   }


   public String getMainImage() {
      return mainImage;
   }


   public void setMainImage(String mainImage) {
      this.mainImage = mainImage;
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


   public BigDecimal getTel() {
      return tel;
   }


   public void setTel(BigDecimal tel) {
      this.tel = tel;
   }


   public String getIntroduce() {
      return introduce;
   }


   public void setIntroduce(String introduce) {
      this.introduce = introduce;
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


   @Override
   public String toString() {
      return "StudioCompany [companyNo=" + companyNo + ", nm=" + nm + ", regNo=" + regNo + ", headName=" + headName
            + ", addr=" + addr + ", mainImage=" + mainImage + ", email=" + email + ", pw=" + pw + ", tel=" + tel
            + ", introduce=" + introduce + ", sessionKey=" + sessionKey + ", sessionLimit=" + sessionLimit
            + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
   }

   
}