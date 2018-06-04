package kr.co.udf.common.company.domain;

public class DressCompany {

   private int dc_no;
   private String dc_nm;
   private int dc_company_no; // 사업자번호
   private String dc_main_nm; // 회사대표 이름
   private String dc_addr;
   private String dc_main_image;
   private String dc_email;
   private String dc_pw;
   private int dc_tel;
   private String dc_introduce;
   private String sessionKey;
   private String sessionLimit;
   private String regdate;
   private String updatedate;

   /** 생성자 */
   public DressCompany() {
      super();
   }

   /** Getter & Setter */
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


   public int getDc_company_no() {
      return dc_company_no;
   }


   public void setDc_company_no(int dc_company_no) {
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


   public int getDc_tel() {
      return dc_tel;
   }


   public void setDc_tel(int dc_tel) {
      this.dc_tel = dc_tel;
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

   /** toString */
   @Override
   public String toString() {
      return "DressCompany [dc_no=" + dc_no + ", dc_nm=" + dc_nm + ", dc_company_no=" + dc_company_no
            + ", dc_main_nm=" + dc_main_nm + ", dc_addr=" + dc_addr + ", dc_main_image=" + dc_main_image
            + ", dc_email=" + dc_email + ", dc_pw=" + dc_pw + ", dc_tel=" + dc_tel + ", dc_introduce="
            + dc_introduce + ", sessionKey=" + sessionKey + ", sessionLimit=" + sessionLimit + ", regdate="
            + regdate + ", updatedate=" + updatedate + "]";
   }
}