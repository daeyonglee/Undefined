package kr.co.udf.auction.domain;

import java.math.BigDecimal;

public class AuctionBid {

   // 게시물 정보
   private BigDecimal no;
   private Integer bidNo;
   private Integer companyNo;
   private Integer applyNo;
   private Integer userNo;
   private Integer productNo;
   private String productNm;
   private String productImage;
   private BigDecimal price;
   private Integer discount;

   private String regdate;
   private String updatedate;
   private String loc;
   private String locFirst;
   private String locSecond;
   private String locThird;
   private String day;
   private String time;
   private String deadline;
   private String stat;

   // 상품 옵션들(studio)
   private String apvYn;
   private String totalYn;
   private String shootType;

   // 상품 옵션들(makeup)
   private String accYn;
   private String familyYn;
   private String Hair_yn;
   private String hairYn;
   
   // 상품 옵션들(dress)
   private String style;

   // 회사 정보
   private String name; // 회사 이름
   private String email;
   private BigDecimal tel;
   private String addr;
   private String productList;
   private String meetDate;
   private String memo;
   private String type;
   private BigDecimal ctel;
   private String cnm;
   private String pnm;

   public AuctionBid() {
   }

   public AuctionBid(BigDecimal no, Integer bidNo, Integer companyNo, Integer applyNo, Integer userNo, Integer productNo,
         String productNm, String productImage, BigDecimal price, Integer discount, String regdate, String updatedate,
         String loc, String locFirst, String locSecond, String locThird, String day, String time, String deadline,
         String stat, String apvYn, String totalYn, String shootType, String accYn, String familyYn, String hair_yn,
         String hairYn, String style, String name, String email, BigDecimal tel, String addr, String productList,
         String meetDate, String memo, String type, BigDecimal ctel, String cnm, String pnm) {
      super();
      this.no = no;
      this.bidNo = bidNo;
      this.companyNo = companyNo;
      this.applyNo = applyNo;
      this.userNo = userNo;
      this.productNo = productNo;
      this.productNm = productNm;
      this.productImage = productImage;
      this.price = price;
      this.discount = discount;
      this.regdate = regdate;
      this.updatedate = updatedate;
      this.loc = loc;
      this.locFirst = locFirst;
      this.locSecond = locSecond;
      this.locThird = locThird;
      this.day = day;
      this.time = time;
      this.deadline = deadline;
      this.stat = stat;
      this.apvYn = apvYn;
      this.totalYn = totalYn;
      this.shootType = shootType;
      this.accYn = accYn;
      this.familyYn = familyYn;
      Hair_yn = hair_yn;
      this.hairYn = hairYn;
      this.style = style;
      this.name = name;
      this.email = email;
      this.tel = tel;
      this.addr = addr;
      this.productList = productList;
      this.meetDate = meetDate;
      this.memo = memo;
      this.type = type;
      this.ctel = ctel;
      this.cnm = cnm;
      this.pnm = pnm;
   }
   
   public BigDecimal getNo() {
      return no;
   }
   
   public void setNo(BigDecimal no) {
      this.no = no;
   }
   
   public Integer getBidNo() {
      return bidNo;
   }
   
   public void setBidNo(Integer bidNo) {
      this.bidNo = bidNo;
   }
   
   public Integer getCompanyNo() {
      return companyNo;
   }
   
   public void setCompanyNo(Integer companyNo) {
      this.companyNo = companyNo;
   }
   
   public Integer getApplyNo() {
      return applyNo;
   }
   
   public void setApplyNo(Integer applyNo) {
      this.applyNo = applyNo;
   }
   
   public Integer getUserNo() {
      return userNo;
   }
   
   public void setUserNo(Integer userNo) {
      this.userNo = userNo;
   }
   
   public Integer getProductNo() {
      return productNo;
   }
   
   public void setProductNo(Integer productNo) {
      this.productNo = productNo;
   }
   
   public String getProductNm() {
      return productNm;
   }
   
   public void setProductNm(String productNm) {
      this.productNm = productNm;
   }
   
   public String getProductImage() {
      return productImage;
   }
   
   public void setProductImage(String productImage) {
      this.productImage = productImage;
   }
   
   public BigDecimal getPrice() {
      return price;
   }
   
   public void setPrice(BigDecimal price) {
      this.price = price;
   }
   
   public Integer getDiscount() {
      return discount;
   }
   
   public void setDiscount(Integer discount) {
      this.discount = discount;
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
   
   public String getLoc() {
      return loc;
   }
   
   public void setLoc(String loc) {
      this.loc = loc;
   }
   
   public String getLocFirst() {
      return locFirst;
   }
   
   public void setLocFirst(String locFirst) {
      this.locFirst = locFirst;
   }
   
   public String getLocSecond() {
      return locSecond;
   }
   
   public void setLocSecond(String locSecond) {
      this.locSecond = locSecond;
   }
   
   public String getLocThird() {
      return locThird;
   }
   
   public void setLocThird(String locThird) {
      this.locThird = locThird;
   }
   
   public String getDay() {
      return day;
   }
   
   public void setDay(String day) {
      this.day = day;
   }
   
   public String getTime() {
      return time;
   }
   
   public void setTime(String time) {
      this.time = time;
   }
   
   public String getDeadline() {
      return deadline;
   }
   
   public void setDeadline(String deadline) {
      this.deadline = deadline;
   }
   
   public String getStat() {
      return stat;
   }
   
   public void setStat(String stat) {
      this.stat = stat;
   }
   
   public String getApvYn() {
      return apvYn;
   }
   
   public void setApvYn(String apvYn) {
      this.apvYn = apvYn;
   }
   
   public String getTotalYn() {
      return totalYn;
   }
   
   public void setTotalYn(String totalYn) {
      this.totalYn = totalYn;
   }
   
   public String getShootType() {
      return shootType;
   }
   
   public void setShootType(String shootType) {
      this.shootType = shootType;
   }
   
   public String getAccYn() {
      return accYn;
   }
   
   public void setAccYn(String accYn) {
      this.accYn = accYn;
   }
   
   public String getFamilyYn() {
      return familyYn;
   }
   
   public void setFamilyYn(String familyYn) {
      this.familyYn = familyYn;
   }
   
   public String getHair_yn() {
      return Hair_yn;
   }
   
   public void setHair_yn(String hair_yn) {
      Hair_yn = hair_yn;
   }
   
   public String getHairYn() {
      return hairYn;
   }
   
   public void setHairYn(String hairYn) {
      this.hairYn = hairYn;
   }
   
   public String getStyle() {
      return style;
   }
   
   public void setStyle(String style) {
      this.style = style;
   }
   
   public String getName() {
      return name;
   }
   
   public void setName(String name) {
      this.name = name;
   }
   
   public String getEmail() {
      return email;
   }
   
   public void setEmail(String email) {
      this.email = email;
   }
   
   public BigDecimal getTel() {
      return tel;
   }
   
   public void setTel(BigDecimal tel) {
      this.tel = tel;
   }
   
   public String getAddr() {
      return addr;
   }
   
   public void setAddr(String addr) {
      this.addr = addr;
   }
   
   public String getProductList() {
      return productList;
   }
   
   public void setProductList(String productList) {
      this.productList = productList;
   }
   
   public String getMeetDate() {
      return meetDate;
   }
   
   public void setMeetDate(String meetDate) {
      this.meetDate = meetDate;
   }
   
   public String getMemo() {
      return memo;
   }
   
   public void setMemo(String memo) {
      this.memo = memo;
   }
   
   public String getType() {
      return type;
   }
   
   public void setType(String type) {
      this.type = type;
   }
   
   public BigDecimal getCtel() {
      return ctel;
   }
   
   public void setCtel(BigDecimal ctel) {
      this.ctel = ctel;
   }
   
   public String getCnm() {
      return cnm;
   }
   
   public void setCnm(String cnm) {
      this.cnm = cnm;
   }
   
   public String getPnm() {
      return pnm;
   }
   
   public void setPnm(String pnm) {
      this.pnm = pnm;
   }
   
   @Override
   public String toString() {
      return "AuctionBid [no=" + no + ", bidNo=" + bidNo + ", companyNo=" + companyNo + ", applyNo=" + applyNo
            + ", userNo=" + userNo + ", productNo=" + productNo + ", productNm=" + productNm + ", productImage="
            + productImage + ", price=" + price + ", discount=" + discount + ", regdate=" + regdate + ", updatedate="
            + updatedate + ", loc=" + loc + ", locFirst=" + locFirst + ", locSecond=" + locSecond + ", locThird="
            + locThird + ", day=" + day + ", time=" + time + ", deadline=" + deadline + ", stat=" + stat + ", apvYn="
            + apvYn + ", totalYn=" + totalYn + ", shootType=" + shootType + ", accYn=" + accYn + ", familyYn="
            + familyYn + ", Hair_yn=" + Hair_yn + ", hairYn=" + hairYn + ", style=" + style + ", name=" + name
            + ", email=" + email + ", tel=" + tel + ", addr=" + addr + ", productList=" + productList + ", meetDate="
            + meetDate + ", memo=" + memo + ", type=" + type + ", ctel=" + ctel + ", cnm=" + cnm + ", pnm=" + pnm + "]";
   }
}