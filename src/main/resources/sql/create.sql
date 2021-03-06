-- drop seq 
DROP SEQUENCE studio_product_seq; 

DROP SEQUENCE dress_product_seq; 

DROP SEQUENCE makeup_product_seq; 

DROP SEQUENCE studio_company_seq; 

DROP SEQUENCE dress_company_seq; 

DROP SEQUENCE makeup_company_seq; 

DROP SEQUENCE studio_interest_product_seq; 

DROP SEQUENCE dress_interest_product_seq; 

DROP SEQUENCE makeup_interest_product_seq; 

DROP SEQUENCE studio_interest_company_seq; 

DROP SEQUENCE dress_interest_company_seq; 

DROP SEQUENCE makeup_interest_company_seq; 

DROP SEQUENCE studio_auction_apply_seq; 

DROP SEQUENCE dress_auction_apply_seq; 

DROP SEQUENCE makeup_auction_apply_seq; 

DROP SEQUENCE studio_bid_seq; 

DROP SEQUENCE dress_bid_seq; 

DROP SEQUENCE makeup_bid_seq;

DROP SEQUENCE studio_bid_product_seq;

DROP SEQUENCE dress_bid_product_seq;

DROP SEQUENCE makeup_bid_product_seq;

DROP SEQUENCE studio_bid_product_list_seq; 

DROP SEQUENCE dress_bid_product_list_seq; 

DROP SEQUENCE makeup_bid_product_list_seq; 

DROP SEQUENCE board_seq; 

DROP SEQUENCE article_seq; 

DROP SEQUENCE reply_seq; 

DROP SEQUENCE users_seq; 

DROP SEQUENCE kakao_users_seq;

DROP SEQUENCE admin_seq; 

DROP SEQUENCE point_product_seq; 

DROP SEQUENCE point_use_hist_seq; 

DROP SEQUENCE point_add_hist_seq; 

DROP SEQUENCE question_hist_seq; 

DROP SEQUENCE studio_cvst_list_seq; 

DROP SEQUENCE dress_cvst_list_seq; 

DROP SEQUENCE makeup_cvst_list_seq; 

DROP SEQUENCE dress_review_seq;

DROP SEQUENCE studio_review_seq;

DROP SEQUENCE makeup_review_seq;

-- drop table 
DROP TABLE studio_product CASCADE CONSTRAINTS; 

DROP TABLE dress_product CASCADE CONSTRAINTS; 

DROP TABLE makeup_product CASCADE CONSTRAINTS; 

DROP TABLE studio_company CASCADE CONSTRAINTS; 

DROP TABLE dress_company CASCADE CONSTRAINTS; 

DROP TABLE makeup_company CASCADE CONSTRAINTS; 

DROP TABLE studio_interest_product CASCADE CONSTRAINTS; 

DROP TABLE dress_interest_product CASCADE CONSTRAINTS; 

DROP TABLE makeup_interest_product CASCADE CONSTRAINTS; 

DROP TABLE studio_interest_company CASCADE CONSTRAINTS; 

DROP TABLE dress_interest_company CASCADE CONSTRAINTS; 

DROP TABLE makeup_interest_company CASCADE CONSTRAINTS; 

DROP TABLE studio_auction_apply CASCADE CONSTRAINTS; 

DROP TABLE dress_auction_apply CASCADE CONSTRAINTS; 

DROP TABLE makeup_auction_apply CASCADE CONSTRAINTS; 

DROP TABLE studio_bid CASCADE CONSTRAINTS; 

DROP TABLE dress_bid CASCADE CONSTRAINTS; 

DROP TABLE makeup_bid CASCADE CONSTRAINTS; 

DROP TABLE users CASCADE CONSTRAINTS;

DROP TABLE kakao_users CASCADE CONSTRAINTS;

DROP TABLE ADMIN CASCADE CONSTRAINTS; 

DROP TABLE board CASCADE CONSTRAINTS; 

DROP TABLE article CASCADE CONSTRAINTS;

DROP TABLE reply CASCADE CONSTRAINTS;

DROP TABLE point_product CASCADE CONSTRAINTS; 

DROP TABLE point_use_hist CASCADE CONSTRAINTS; 

DROP TABLE point_add_hist CASCADE CONSTRAINTS; 

DROP TABLE question_hist CASCADE CONSTRAINTS; 

DROP TABLE studio_cvst_list CASCADE CONSTRAINTS; 

DROP TABLE dress_cvst_list CASCADE CONSTRAINTS; 

DROP TABLE makeup_cvst_list CASCADE CONSTRAINTS; 

DROP TABLE studio_bid_product_list CASCADE CONSTRAINTS; 

DROP TABLE dress_bid_product_list CASCADE CONSTRAINTS; 

DROP TABLE makeup_bid_product_list CASCADE CONSTRAINTS; 

DROP TABLE dress_review CASCADE CONSTRAINTS;

DROP TABLE studio_review CASCADE CONSTRAINTS;

DROP TABLE makeup_review CASCADE CONSTRAINTS;

-- create seq 
CREATE SEQUENCE studio_product_seq; 

CREATE SEQUENCE dress_product_seq; 

CREATE SEQUENCE makeup_product_seq; 

CREATE SEQUENCE studio_company_seq; 

CREATE SEQUENCE dress_company_seq; 

CREATE SEQUENCE makeup_company_seq; 

CREATE SEQUENCE studio_interest_product_seq; 

CREATE SEQUENCE dress_interest_product_seq; 

CREATE SEQUENCE makeup_interest_product_seq; 

CREATE SEQUENCE studio_interest_company_seq; 

CREATE SEQUENCE dress_interest_company_seq; 

CREATE SEQUENCE makeup_interest_company_seq; 

CREATE SEQUENCE studio_auction_apply_seq; 

CREATE SEQUENCE dress_auction_apply_seq; 

CREATE SEQUENCE makeup_auction_apply_seq; 

CREATE SEQUENCE studio_bid_seq; 

CREATE SEQUENCE dress_bid_seq; 

CREATE SEQUENCE makeup_bid_seq;

CREATE SEQUENCE studio_bid_product_seq;

CREATE SEQUENCE dress_bid_product_seq;

CREATE SEQUENCE makeup_bid_product_seq;

CREATE SEQUENCE studio_bid_product_list_seq;

CREATE SEQUENCE dress_bid_product_list_seq;

CREATE SEQUENCE makeup_bid_product_list_seq;

CREATE SEQUENCE board_seq; 

CREATE SEQUENCE article_seq; 

CREATE SEQUENCE users_seq;

CREATE SEQUENCE kakao_users_seq;

CREATE SEQUENCE admin_seq; 

CREATE SEQUENCE point_product_seq; 

CREATE SEQUENCE point_use_hist_seq; 

CREATE SEQUENCE point_add_hist_seq; 

CREATE SEQUENCE question_hist_seq; 

CREATE SEQUENCE studio_cvst_list_seq; 

CREATE SEQUENCE dress_cvst_list_seq; 

CREATE SEQUENCE makeup_cvst_list_seq; 

CREATE SEQUENCE dress_review_seq;

CREATE SEQUENCE studio_review_seq;

CREATE SEQUENCE makeup_review_seq;

CREATE SEQUENCE reply_seq;

-- create table 

-- @@순서@@
-- 전체 상품
-- 전체 업체
-- 관심 상품
-- 관심 업체
-- 고객 역경매 신청
-- 고객 역경매에 대한 입찰 업체
-- 입찰 업체의 상품 목록
-- 게시판 & 게시물
-- 회원(일반사용자 & 관리자)
-- 포인트 관련
-- 쪽지 정보
-- 후기 정보


-- 전체 상품 
-- 전체 상품(스튜디오) 
CREATE TABLE studio_product 
  ( 
     sp_no         NUMBER(10) NOT NULL, 
     sc_no         NUMBER(10) NOT NULL, 
     sp_nm         VARCHAR2(100),
     sp_price      NUMBER(20) NOT NULL,  
     sp_apv_yn     VARCHAR2(1) DEFAULT 'N' NOT NULL,  -- 액자/앨범/비디오 여부
     sp_total_yn   VARCHAR2(1) DEFAULT 'N' NOT NULL,  -- 토탈샵 여부
     sp_shoot_type VARCHAR2(10) NOT NULL, -- 실/내외 촬영
     sp_image      VARCHAR2(300), 
     regdate       DATE DEFAULT SYSDATE NOT NULL, 
     updatedate    DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sp_no, sc_no) 
  );

-- 전체 상품(드레스) 
CREATE TABLE dress_product 
  ( 
     dp_no      NUMBER(10) NOT NULL, 
     dc_no      NUMBER(10) NOT NULL,
     dp_nm      VARCHAR2(100),
     dp_price   NUMBER(20) DEFAULT 0 NOT NULL, 
     dp_style   VARCHAR2(20) NOT NULL, -- 드레스 스타일
     dp_image   VARCHAR2(200), 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (dp_no, dc_no) 
  ); 

-- 전체 상품(메이크업) 
CREATE TABLE makeup_product 
  ( 
     mp_no        NUMBER(10) NOT NULL, 
     mc_no        NUMBER(10) NOT NULL,
     mp_nm        VARCHAR2(100),
     mp_price     NUMBER(20) DEFAULT 0 NOT NULL, 
     mp_acc_yn    VARCHAR2(1) DEFAULT 'N' NOT NULL, -- 악세사리 여부
     mp_family_yn VARCHAR2(1) DEFAULT 'N' NOT NULL, -- 가족 포함 여부
     mp_hair_yn   VARCHAR2(1) DEFAULT 'N' NOT NULL, -- 헤어 여부
     mp_image     VARCHAR2(300),
     regdate      DATE DEFAULT SYSDATE NOT NULL, 
     updatedate   DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mp_no, mc_no) 
  ); 



-- 전체 업체 
-- 전체 업체(스튜디오) 
CREATE TABLE studio_company 
  ( 
     sc_no         NUMBER(10) NOT NULL, 
     sc_nm         VARCHAR2(30) NOT NULL, 
     sc_company_no NUMBER(20) NOT NULL,   -- 사업자번호
     sc_main_nm    VARCHAR2(30) NOT NULL, 
     sc_addr       VARCHAR2(600) NOT NULL, 
     sc_main_image VARCHAR2(300) NOT NULL, 
     sc_email      VARCHAR2(50) NOT NULL, 
     sc_pw         VARCHAR2(20) NOT NULL, 
     sc_tel        NUMBER(20) NOT NULL,
     sc_smy_intro  VARCHAR2(300),
     sc_introduce  VARCHAR2(3000), 
     sessionkey    VARCHAR2(50) DEFAULT 'none' NOT NULL, 
     sessionlimit  DATE, 
     regdate       DATE DEFAULT SYSDATE NOT NULL, 
     updatedate    DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sc_no) 
  ); 

-- 전체 업체(드레스) 
CREATE TABLE dress_company 
  ( 
     dc_no         NUMBER(10) NOT NULL, 
     dc_nm         VARCHAR2(30) NOT NULL, 
     dc_company_no NUMBER(20) NOT NULL, 
     dc_main_nm    VARCHAR2(30) NOT NULL, 
     dc_addr       VARCHAR2(600) NOT NULL, 
     dc_main_image VARCHAR2(300), 
     dc_email      VARCHAR2(50) NOT NULL, 
     dc_pw         VARCHAR2(20) NOT NULL, 
     dc_tel        NUMBER(20) NOT NULL,
     dc_smy_intro  VARCHAR2(300),
     dc_introduce  VARCHAR2(3000), 
     sessionkey    VARCHAR2(50) DEFAULT 'none' NOT NULL, 
     sessionlimit  DATE, 
     regdate       DATE DEFAULT SYSDATE NOT NULL, 
     updatedate    DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (dc_no) 
  ); 

-- 전체 업체(메이크업) 
CREATE TABLE makeup_company 
  ( 
     mc_no         NUMBER(10) NOT NULL, 
     mc_nm         VARCHAR2(30) NOT NULL, 
     mc_company_no NUMBER(20) NOT NULL, 
     mc_main_nm    VARCHAR2(30) NOT NULL, 
     mc_addr       VARCHAR2(600) NOT NULL, 
     mc_main_image VARCHAR2(300), 
     mc_email      VARCHAR2(50) NOT NULL, 
     mc_pw         VARCHAR2(20) NOT NULL, 
     mc_tel        NUMBER(20) NOT NULL,
     mc_smy_intro  VARCHAR2(300),
     mc_introduce  VARCHAR2(3000), 
     sessionkey    VARCHAR2(50) DEFAULT 'none' NOT NULL, 
     sessionlimit  DATE, 
     regdate       DATE DEFAULT SYSDATE NOT NULL, 
     updatedate    DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mc_no) 
  ); 



-- 관심 상품(스튜디오) 
CREATE TABLE studio_interest_product 
  ( 
     sip_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     sp_no      NUMBER(10) NOT NULL, 
     sc_no      NUMBER(10) NOT NULL,
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sip_no, user_no, sp_no, sc_no) 
  ); 

-- 관심 상품(드레스) 
CREATE TABLE dress_interest_product 
  ( 
     dip_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     dp_no      NUMBER(10) NOT NULL, 
     dc_no      NUMBER(10) NOT NULL,
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (dip_no, user_no, dp_no, dc_no) 
  ); 

-- 관심 상품(메이크업) 
CREATE TABLE makeup_interest_product 
  ( 
     mip_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     mp_no      NUMBER(10) NOT NULL, 
     mc_no      NUMBER(10) NOT NULL,
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mip_no, user_no, mp_no, mc_no) 
  );  



-- 관심 업체 
-- 관심 업체(스튜디오) 
CREATE TABLE studio_interest_company 
  ( 
     sic_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     sc_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sic_no, user_no, sc_no) 
  ); 

-- 관십 업체(드레스) 
CREATE TABLE dress_interest_company 
  ( 
     dic_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     dc_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (dic_no, user_no, dc_no) 
  ); 

-- 관심 업체(메이크업) 
CREATE TABLE makeup_interest_company 
  ( 
     mic_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     mc_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mic_no, user_no, mc_no) 
  ); 



-- 고객 역경매 신청 
-- 고객 역경매 신청(스튜디오) 
CREATE TABLE studio_auction_apply 
  ( 
     saa_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     saa_loc    VARCHAR2(100) NOT NULL, 
     saa_date   DATE NOT NULL,
     saa_deadline DATE NOT NULL,
     saa_memo   VARCHAR2(3000),
     saa_stat   VARCHAR2(20) DEFAULT '입찰중' NOT NULL,
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (saa_no, user_no) 
  ); 

-- 고객 역경매 신청(드레스) 
CREATE TABLE dress_auction_apply 
  ( 
     daa_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     daa_loc    VARCHAR2(100) NOT NULL, 
     daa_date   DATE NOT NULL,
     daa_deadline DATE NOT NULL,
     daa_memo   VARCHAR2(3000),
     daa_stat   VARCHAR2(20) DEFAULT '입찰중' NOT NULL,
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE NOT NULL, 
     PRIMARY KEY (daa_no, user_no) 
  ); 

-- 고객 역경매 신청(메이크업) 
CREATE TABLE makeup_auction_apply 
  ( 
     maa_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     maa_loc    VARCHAR2(100) NOT NULL, 
     maa_date   DATE NOT NULL,
     maa_deadline DATE NOT NULL,
     maa_memo   VARCHAR2(3000),
     maa_stat   VARCHAR2(20) DEFAULT '입찰중' NOT NULL,
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (maa_no, user_no) 
  ); 



-- 고객 역경매에 대한 입찰 업체 
-- 고객 역경매에 대한 입찰 업체(스튜디오) 
CREATE TABLE studio_bid 
  ( 
     sb_no      NUMBER(10) NOT NULL, 
     saa_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     sc_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sb_no, saa_no, user_no, sc_no) 
  ); 

-- 고객 역경매에 대한 입찰 업체(드레스) 
CREATE TABLE dress_bid 
  ( 
     db_no      NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     daa_no     NUMBER(10) NOT NULL, 
     dc_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (db_no, user_no, daa_no, dc_no) 
  ); 

-- 고객 역경매에 대한 입찰 업체(메이크업) 
CREATE TABLE makeup_bid 
  ( 
     mb_no      NUMBER(10) NOT NULL, 
     mc_no      NUMBER(10) NOT NULL, 
     maa_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mb_no, mc_no, maa_no, user_no) 
  ); 



-- 입찰 업체의 입찰 상품 목록 
-- 입찰 업체의 입찰 상품 목록(스튜디오) 
CREATE TABLE studio_bid_product_list 
  ( 
     sbpl_no        NUMBER(10) NOT NULL, 
     sb_no          NUMBER(10) NOT NULL, 
     saa_no         NUMBER(10) NOT NULL, 
     user_no        NUMBER(10) NOT NULL, 
     sc_no          NUMBER(10) NOT NULL, 
     sp_no          NUMBER(10) NOT NULL, 
     sbpl_discount  NUMBER(3), 
     sbpl_meet_date DATE, 
     regdate        DATE DEFAULT SYSDATE NOT NULL, 
     updatedate     DATE DEFAULT SYSDATE NOT NULL 
  ); 

-- 입찰 업체의 입찰 상품 목록(드레스) 
CREATE TABLE dress_bid_product_list 
  ( 
     dbpl_no        NUMBER(10) NOT NULL, 
     db_no          NUMBER(10) NOT NULL, 
     user_no        NUMBER(10) NOT NULL, 
     daa_no         NUMBER(10) NOT NULL, 
     dc_no          NUMBER(10) NOT NULL, 
     dp_no          NUMBER(10) NOT NULL, 
     dbpl_discount  NUMBER(3), 
     dbpl_meet_date DATE, 
     regdate        DATE DEFAULT SYSDATE NOT NULL, 
     updatedate     DATE DEFAULT SYSDATE NOT NULL 
  ); 

-- 입찰 업체의 입찰 상품 목록(메이크업) 
CREATE TABLE makeup_bid_product_list 
  ( 
     mbpl_no        NUMBER(10) NOT NULL, 
     mb_no          NUMBER(10) NOT NULL, 
     mc_no          NUMBER(10) NOT NULL, 
     maa_no         NUMBER(10) NOT NULL, 
     user_no        NUMBER(10) NOT NULL, 
     mp_no          NUMBER(10) NOT NULL, 
     mbpl_discount  NUMBER(3), 
     mbpl_meet_date DATE, 
     regdate        DATE DEFAULT SYSDATE NOT NULL, 
     updatedate     DATE DEFAULT SYSDATE NOT NULL 
  ); 



-- 게시판 & 게시물 
-- 게시판 
CREATE TABLE board 
  ( 
     board_no   NUMBER(10) NOT NULL, 
     board_nm   VARCHAR2(100) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (board_no) 
  ); 

-- 게시물 
CREATE TABLE article 
  ( 
     article_no      NUMBER(10) NOT NULL, 
     board_no        NUMBER(10) NOT NULL, 
     user_no         NUMBER(10) NOT NULL, 
     article_head    VARCHAR2(50), -- kind 스드메 종류 null허용으로 바뀌어야 쪽지함, 공지사항 가능
     article_title   VARCHAR2(100) NOT NULL, 
     article_content VARCHAR2(3000) NOT NULL, 
     hitcount        NUMBER(20) DEFAULT 0, 
     reply_no        NUMBER(10), 
     regdate         DATE DEFAULT SYSDATE NOT NULL, 
     updatedate      DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (article_no, board_no, user_no) 
  ); 
 
create table reply(
     reply_no      NUMBER(10)  NOT NULL, 
     article_no      NUMBER(10)  DEFAULT 0 NOT NULL, 
     reply_content VARCHAR2(1000) NOT NULL,
     user_nm       VARCHAR2(30) NOT NULL,
     regdate         DATE DEFAULT SYSDATE NOT NULL,
     updatedate      DATE DEFAULT SYSDATE NOT NULL,     
     PRIMARY KEY (reply_no, article_no) 
);


-- 회원 
-- 일반사용자 
CREATE TABLE users 
  ( 
     user_no       NUMBER(10) NOT NULL, 
     user_email    VARCHAR2(50) NOT NULL, 
     user_pw       VARCHAR2(20) NOT NULL,
     user_nm       VARCHAR2(30) NOT NULL,
     user_birthday DATE NOT NULL, 
     user_addr     VARCHAR2(100) NOT NULL, 
     user_tel      NUMBER(20) NOT NULL, 
     user_point    NUMBER(30) DEFAULT 0 NOT NULL, 
     sessionkey    VARCHAR2(50) DEFAULT 'none' NOT NULL, 
     sessionlimit  DATE, 
     regdate       DATE DEFAULT SYSDATE NOT NULL, 
     updatedate    DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (user_no) 
  );
  
-- 카카오 일반 사용자
CREATE TABLE kakao_users
  (
    id              NUMBER(10) NOT NULL,
    user_no         NUMBER(10) NOT NULL,
    profile_image   VARCHAR2(300) NOT NULL,
    thumbnail_image VARCHAR2(300) NOT NULL,
    regdate        DATE DEFAULT SYSDATE NOT NULL,
    updatedate     DATE DEFAULT SYSDATE NOT NULL,
    PRIMARY KEY (id, user_no)
  );

-- 관리자 
CREATE TABLE ADMIN 
  ( 
     admin_no    NUMBER(10) NOT NULL, 
     admin_email VARCHAR2(50) NOT NULL, 
     admin_nm    VARCHAR2(30) NOT NULL, 
     admin_pw    VARCHAR2(20) NOT NULL, 
     regdate     DATE DEFAULT SYSDATE NOT NULL, 
     updatedate  DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (admin_no) 
  ); 



-- 포인트 관련 
-- 포인트상점 상품 
CREATE TABLE point_product 
  ( 
     pp_no      NUMBER(10) NOT NULL, 
     pp_nm      VARCHAR2(100) NOT NULL, 
     pp_price   NUMBER(20) DEFAULT 0 NOT NULL, 
     pp_count   NUMBER(10) DEFAULT 1 NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (pp_no) 
  ); 

-- 포인트 사용내역 
CREATE TABLE point_use_hist 
  ( 
     pah_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     pp_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (pah_no, user_no, pp_no) 
  ); 

-- 포인트 적립 내역 
CREATE TABLE point_add_hist 
  ( 
     pah_no      NUMBER(10) NOT NULL, 
     user_no     NUMBER(10) NOT NULL, 
     pah_add_num NUMBER(20) DEFAULT 0 NOT NULL, 
     regdate     DATE DEFAULT SYSDATE NOT NULL, 
     updatedate  DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (pah_no, user_no) 
  ); 

-- 질문 내역 
CREATE TABLE question_hist 
  ( 
     qh_no      NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     admin_no   NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (qh_no, user_no, admin_no) 
  ); 



-- 쪽지 정보 
-- 스튜디오에 관한 쪽지 
CREATE TABLE studio_cvst_list 
  ( 
     mcl_no      NUMBER(10) NOT NULL, 
     user_no     NUMBER(10) NOT NULL, 
     sc_no       NUMBER(10) NOT NULL, 
     mcl_content VARCHAR2(3000) NOT NULL, 
     sp_no       NUMBER(10) NOT NULL, 
     regdate     DATE DEFAULT SYSDATE NOT NULL, 
     updatedate  DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mcl_no, user_no, sc_no) 
  ); 

-- 드레스에 관한 쪽지 정보 
CREATE TABLE dress_cvst_list 
  ( 
     dcl_no      NUMBER(10) NOT NULL, 
     user_no     NUMBER(10) NOT NULL, 
     dc_no       NUMBER(10) NOT NULL, 
     dcl_content VARCHAR2(3000) NOT NULL, 
     dp_no       NUMBER(10), 
     regdate     DATE DEFAULT SYSDATE NOT NULL, 
     updatedate  DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (dcl_no, user_no, dc_no) 
  ); 

-- 메이크업에 관한 쪽지 
CREATE TABLE makeup_cvst_list 
  ( 
     mcl_no      NUMBER(10) NOT NULL, 
     user_no     NUMBER(10) NOT NULL, 
     mc_no       NUMBER(10) NOT NULL, 
     mcl_content VARCHAR2(3000) NOT NULL, 
     mp_no       NUMBER(10), 
     regdate     DATE DEFAULT SYSDATE NOT NULL, 
     updatedate  DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mcl_no, user_no, mc_no) 
  ); 

--후기 정보
--후기 정보(드레스)
CREATE TABLE dress_review 
  (
    dr_no number(10) NOT NULL,
    dc_no number(10) NOT NULL,
    user_no number(10) NOT NULL,
    dr_subject varchar2(1000),
    dr_content varchar2(3000) NOT NULL,
    dr_point number(3, 2) NOT NULL,
    regdate date DEFAULT sysdate NOT NULL,
    updatedate date DEFAULT sysdate NOT NULL,
    PRIMARY KEY (dr_no, dc_no, user_no)
  );
--후기 정보(스튜디오)
CREATE TABLE studio_review 
  (
    sr_no   number(10) NOT NULL,
    sc_no   number(10) NOT NULL,
    user_no number(10) NOT NULL,
    sr_subject varchar2(1000),
    sr_content varchar2(3000) NOT NULL,
    sr_point number(3, 2) NOT NULL,
    regdate date DEFAULT sysdate NOT NULL,
    updatedate date DEFAULT sysdate NOT NULL
  );
--후기 정보(메이크업)
CREATE TABLE makeup_review 
  (
    mr_no number(10) NOT NULL,
    mc_no number(10) NOT NULL,
    user_no number(10) NOT NULL,
    mr_subject varchar2(1000),
    mr_content varchar2(3000) NOT NULL,
    mr_point number(3, 2) NOT NULL,
    regdate date DEFAULT sysdate NOT NULL,
    updatedate date DEFAULT sysdate NOT NULL
  );

-- constraint 
ALTER TABLE studio_product 
  ADD CONSTRAINT sp_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no); 

ALTER TABLE dress_product 
  ADD CONSTRAINT dp_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no); 

ALTER TABLE makeup_product 
  ADD CONSTRAINT mp_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no); 

ALTER TABLE studio_interest_product 
  ADD( CONSTRAINT sip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT sip_sp_fk FOREIGN KEY (sp_no, sc_no) REFERENCES studio_product (sp_no, sc_no)); 

ALTER TABLE dress_interest_product 
  ADD( CONSTRAINT dip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT dip_dp_fk FOREIGN KEY (dp_no, dc_no) REFERENCES dress_product (dp_no, dc_no)); 

ALTER TABLE makeup_interest_product 
  ADD( CONSTRAINT mip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT mip_mp_fk FOREIGN KEY (mp_no, mc_no) REFERENCES makeup_product (mp_no, mc_no));  

ALTER TABLE studio_interest_company 
  ADD( CONSTRAINT sic_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT sic_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no)); 

ALTER TABLE dress_interest_company 
  ADD( CONSTRAINT dic_user_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT dic_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no)); 

ALTER TABLE makeup_interest_company 
  ADD( CONSTRAINT mic_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT mic_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no)); 

ALTER TABLE studio_auction_apply 
  ADD CONSTRAINT saa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no); 

ALTER TABLE dress_auction_apply 
  ADD CONSTRAINT daa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no); 

ALTER TABLE makeup_auction_apply 
  ADD CONSTRAINT maa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no); 

ALTER TABLE studio_bid 
  ADD( CONSTRAINT sb_saa_fk FOREIGN KEY (saa_no, user_no) REFERENCES 
  studio_auction_apply (saa_no, user_no), CONSTRAINT sb_sc_fk FOREIGN KEY (sc_no 
  ) REFERENCES studio_company (sc_no)); 

ALTER TABLE dress_bid 
  ADD( CONSTRAINT db_daa_fk FOREIGN KEY (daa_no, user_no) REFERENCES 
  dress_auction_apply (daa_no, user_no), CONSTRAINT db_dc_fk FOREIGN KEY (dc_no) 
  REFERENCES dress_company (dc_no)); 

ALTER TABLE makeup_bid 
  ADD( CONSTRAINT mb_maa_fk FOREIGN KEY (maa_no, user_no) REFERENCES 
  makeup_auction_apply (maa_no, user_no), CONSTRAINT mb_mc_fk FOREIGN KEY (mc_no 
  ) REFERENCES makeup_company (mc_no)); 

ALTER TABLE point_use_hist 
  ADD( CONSTRAINT puh_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT puh_pp_fk FOREIGN KEY (pp_no) REFERENCES point_product (pp_no)); 

ALTER TABLE point_add_hist 
  ADD CONSTRAINT pah_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no); 

ALTER TABLE question_hist 
  ADD( CONSTRAINT qh_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT qh_admin_fk FOREIGN KEY (admin_no) REFERENCES ADMIN (admin_no)); 

ALTER TABLE studio_cvst_list 
  ADD( CONSTRAINT scl_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT scl_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no), 
  CONSTRAINT scl_sp_fk FOREIGN KEY (sp_no, sc_no) REFERENCES studio_product ( 
  sp_no, sc_no)); 

ALTER TABLE makeup_cvst_list 
  ADD( CONSTRAINT mcl_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no 
  ), CONSTRAINT mcl_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT mcl_mp_fk FOREIGN KEY (mp_no, mc_no) REFERENCES makeup_product ( 
  mp_no, mc_no)); 

ALTER TABLE dress_cvst_list 
  ADD( CONSTRAINT dcl_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT dcl_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no), 
  CONSTRAINT dcl_dp FOREIGN KEY (dp_no, dc_no) REFERENCES dress_product (dp_no, 
  dc_no));
  
ALTER TABLE dress_review ADD CONSTRAINT dr_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no);
ALTER TABLE studio_review ADD CONSTRAINT sr_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no);
ALTER TABLE makeup_review ADD CONSTRAINT mr_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no);

ALTER TABLE dress_review ADD CONSTRAINT dr_user_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE studio_review ADD CONSTRAINT sr_user_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE makeup_review ADD CONSTRAINT mr_user_fk FOREIGN KEY (user_no) REFERENCES users (user_no);

ALTER TABLE article 
  ADD CONSTRAINT article_board_fk FOREIGN KEY (board_no) REFERENCES board ( 
  board_no);
  
ALTER TABLE article ADD CONSTRAINT article_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no); 
  
ALTER TABLE reply ADD CONSTRAINT reply_article_fk FOREIGN KEY (article_no) REFERENCES article(article_no);

ALTER TABLE kakao_users ADD CONSTRAINT kakao_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
-- insert data 
-- admin 
desc ADMIN; 
INSERT INTO ADMIN 
            (admin_no, 
             admin_email, 
             admin_nm, 
             admin_pw) 
VALUES      (admin_seq.NEXTVAL, 
             'admin@undefined.com', 
             '관리자1', 
             'q1w2e3r4'); 

INSERT INTO ADMIN 
            (admin_no, 
             admin_email, 
             admin_nm, 
             admin_pw) 
VALUES      (admin_seq.NEXTVAL, 
             'admin2@undefined.com', 
             '관리자2', 
             '1234'); 

INSERT INTO ADMIN 
            (admin_no, 
             admin_email, 
             admin_nm, 
             admin_pw) 
VALUES      (admin_seq.NEXTVAL, 
             'admin3@undefined.com', 
             '관리자3', 
             '1q2w3e4r'); 

SELECT * 
FROM   ADMIN; 

SELECT * 
FROM   users; 

-- board 
desc board; 
INSERT INTO board 
            (board_no, 
             board_nm) 
VALUES      (board_seq.NEXTVAL, 
             '공지사항'); 

INSERT INTO board 
            (board_no, 
             board_nm) 
VALUES      (board_seq.NEXTVAL, 
             '자유게시판'); 

SELECT * 
FROM   board; 

COMMIT; 