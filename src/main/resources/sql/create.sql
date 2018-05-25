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

DROP SEQUENCE studio_bid_product_list_seq; 

DROP SEQUENCE dress_bid_product_list_seq; 

DROP SEQUENCE makeup_bid_product_list_seq; 

DROP SEQUENCE board_seq; 

DROP SEQUENCE article_seq; 

DROP SEQUENCE users_seq; 

DROP SEQUENCE admin_seq; 

DROP SEQUENCE point_product_seq; 

DROP SEQUENCE point_use_hist_seq; 

DROP SEQUENCE point_add_hist_seq; 

DROP SEQUENCE question_hist_seq; 

DROP SEQUENCE studio_cvst_list_seq; 

DROP SEQUENCE dress_cvst_list_seq; 

DROP SEQUENCE makeup_cvst_list_seq; 



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

DROP TABLE ADMIN CASCADE CONSTRAINTS; 

DROP TABLE board CASCADE CONSTRAINTS; 

DROP TABLE article CASCADE CONSTRAINTS; 

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

CREATE SEQUENCE board_seq; 

CREATE SEQUENCE article_seq; 

CREATE SEQUENCE users_seq; 

CREATE SEQUENCE admin_seq; 

CREATE SEQUENCE point_product_seq; 

CREATE SEQUENCE point_use_hist_seq; 

CREATE SEQUENCE point_add_hist_seq; 

CREATE SEQUENCE question_hist_seq; 

CREATE SEQUENCE studio_cvst_list_seq; 

CREATE SEQUENCE dress_cvst_list_seq; 

CREATE SEQUENCE makeup_cvst_list_seq; 



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



-- 전체 상품 
-- 전체 상품(스튜디오) 
CREATE TABLE studio_product 
  ( 
     sp_no         NUMBER(10) NOT NULL, 
     sc_no         NUMBER(10) NOT NULL, 
     sp_price      NUMBER(20) NOT NULL, 
     sp_apv_yn     VARCHAR2(1) NOT NULL, 
     sp_image      VARCHAR2(300), 
     sp_total_yn   VARCHAR2(1) NOT NULL, 
     sp_shoot_type VARCHAR2(10) NOT NULL, 
     regdate       DATE DEFAULT SYSDATE NOT NULL, 
     updatedate    DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sp_no, sc_no) 
  );

-- 전체 상품(드레스) 
CREATE TABLE dress_product 
  ( 
     dp_no      NUMBER(10) NOT NULL, 
     dc_no      NUMBER(10) NOT NULL, 
     dp_style   VARCHAR2(20) NOT NULL, 
     dp_image   VARCHAR2(200), 
     dp_price   NUMBER(20) DEFAULT 0 NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (dp_no, dc_no) 
  ); 

-- 전체 상품(메이크업) 
CREATE TABLE makeup_product 
  ( 
     mp_no        NUMBER(10) NOT NULL, 
     mc_no        NUMBER(10) NOT NULL, 
     mp_image     VARCHAR2(300), 
     mp_price     NUMBER(20) DEFAULT 0 NOT NULL, 
     mp_acc_yn    VARCHAR2(1) DEFAULT 'N' NOT NULL, 
     mp_family_yn VARCHAR2(1) DEFAULT 'N' NOT NULL, 
     mp_hair_yn   VARCHAR2(1) DEFAULT 'N' NOT NULL, 
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
     sc_company_no NUMBER(20) NOT NULL, 
     sc_main_nm    VARCHAR2(30) NOT NULL, 
     sc_addr       VARCHAR2(100) NOT NULL, 
     sc_main_image VARCHAR2(300) NOT NULL, 
     sc_email      VARCHAR2(50) NOT NULL, 
     sc_pw         VARCHAR2(20) NOT NULL, 
     sc_tel        NUMBER(20) NOT NULL, 
     sc_introduce  VARCHAR2(300), 
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
     dc_addr       VARCHAR2(100) NOT NULL, 
     dc_main_image VARCHAR2(300), 
     dc_email      VARCHAR2(50) NOT NULL, 
     dc_pw         VARCHAR2(20) NOT NULL, 
     dc_tel        NUMBER(20) NOT NULL, 
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
     mc_addr       VARCHAR2(100) NOT NULL, 
     mc_main_image VARCHAR2(300), 
     mc_email      VARCHAR2(50) NOT NULL, 
     mc_pw         VARCHAR2(20) NOT NULL, 
     mc_tel        NUMBER(20) NOT NULL, 
     mc_introduce  VARCHAR2(3000), 
     sessionkey    VARCHAR2(50) DEFAULT 'none' NOT NULL, 
     sessionlimit  DATE, 
     regdate       DATE DEFAULT SYSDATE NOT NULL, 
     updatedate    DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mc_no) 
  ); 



-- 관심상품 
-- 관심 상품(스튜디오) 
CREATE TABLE studio_interest_product 
  ( 
     sip_no     NUMBER(10) NOT NULL, 
     user_no    NUMBER(10) NOT NULL, 
     sc_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sip_no, user_no, sc_no) 
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
     mc_no      NUMBER(10) NOT NULL, 
     regdate    DATE DEFAULT SYSDATE NOT NULL, 
     updatedate DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (mip_no, user_no, mc_no) 
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
     saa_memo   VARCHAR2(3000), 
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
     daa_memo   VARCHAR2(3000), 
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
     maa_memo   VARCHAR2(3000), 
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
     article_head    VARCHAR2(50) NOT NULL, 
     article_title   VARCHAR2(100) NOT NULL, 
     article_content VARCHAR2(3000) NOT NULL, 
     hitcount        NUMBER(20) DEFAULT 0, 
     reply_no        NUMBER(10), 
     regdate         DATE DEFAULT SYSDATE NOT NULL, 
     updatedate      DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (article_no, board_no, user_no) 
  ); 



-- 회원 
-- 일반사용자 
CREATE TABLE users 
  ( 
     user_no       NUMBER(10) NOT NULL, 
     user_email    VARCHAR2(50) NOT NULL, 
     user_pw       VARCHAR2(20) NOT NULL, 
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



-- constraint 
ALTER TABLE studio_product 
  ADD CONSTRAINT sp_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no); 

ALTER TABLE dress_product 
  ADD CONSTRAINT dp_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no); 

ALTER TABLE makeup_product 
  ADD CONSTRAINT mp_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no); 

ALTER TABLE studio_interest_product 
  ADD( CONSTRAINT sip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT sip_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no)); 

ALTER TABLE dress_interest_product 
  ADD( CONSTRAINT dip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT dip_dp_fk FOREIGN KEY (dp_no, dc_no) REFERENCES dress_product ( 
  dp_no, dc_no)); 

ALTER TABLE makeup_interest_product 
  ADD( CONSTRAINT mip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no), 
  CONSTRAINT mip_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no)); 

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

ALTER TABLE article 
  ADD CONSTRAINT article_board_fk FOREIGN KEY (board_no) REFERENCES board ( 
  board_no); 

ALTER TABLE article 
  ADD CONSTRAINT article_users_fk FOREIGN KEY (user_no) REFERENCES users ( 
  user_no); 

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
             '愿�由ъ옄1', 
             'q1w2e3r4'); 

INSERT INTO ADMIN 
            (admin_no, 
             admin_email, 
             admin_nm, 
             admin_pw) 
VALUES      (admin_seq.NEXTVAL, 
             'admin2@undefined.com', 
             '愿�由ъ옄2', 
             '1234'); 

INSERT INTO ADMIN 
            (admin_no, 
             admin_email, 
             admin_nm, 
             admin_pw) 
VALUES      (admin_seq.NEXTVAL, 
             'admin3@undefined.com', 
             '愿�由ъ옄3', 
             '1q2w3e4r'); 

SELECT * 
FROM   ADMIN; 

-- users 
desc users; 
INSERT INTO users 
            (user_no, 
             user_email, 
             user_pw, 
             user_birthday, 
             user_addr, 
             user_tel, 
             user_point) 
VALUES      (users_seq.NEXTVAL, 
             'kosta@naver.com', 
             '1234', 
             TO_DATE('1990-01-11'), 
             '�꽌�슱�듅蹂꾩떆 湲덉쿇援� 媛��궛�뵒吏��꽭1濡� 151 �씠�끂�뵆�젆�뒪 1李� 2痢�' 
             , 
             07050395805, 
             0); 

INSERT INTO users 
            (user_no, 
             user_email, 
             user_pw, 
             user_birthday, 
             user_addr, 
             user_tel, 
             user_point) 
VALUES      (users_seq.NEXTVAL, 
             'dleo200@naver.com', 
             '1q2w3e4r', 
             TO_DATE('1990-01-11'), 
             '寃쎄린�룄 怨좎뼇�떆 �뜒�뼇援� 愿��궛�룞', 
             01083768171, 
             0); 

SELECT * 
FROM   users; 

-- board 
desc board; 
INSERT INTO board 
            (board_no, 
             board_nm) 
VALUES      (board_seq.NEXTVAL, 
             '怨듭��궗�빆'); 

INSERT INTO board 
            (board_no, 
             board_nm) 
VALUES      (board_seq.NEXTVAL, 
             '�옄�쑀寃뚯떆�뙋'); 

SELECT * 
FROM   board; 

COMMIT; 