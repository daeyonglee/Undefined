-- drop seq
DROP SEQUENCE studio_interest_product_seq;
DROP SEQUENCE makeup_auction_apply_seq;
DROP SEQUENCE studio_interest_company_seq;
DROP SEQUENCE makeup_interest_product_seq;
DROP SEQUENCE makeup_product_seq;
DROP SEQUENCE article_seq;
DROP SEQUENCE dress_interest_product_seq;
DROP SEQUENCE makeup_bid_seq;
DROP SEQUENCE makeup_interest_company_seq;
DROP SEQUENCE studio_auction_apply_seq;
DROP SEQUENCE studio_company_seq;
DROP SEQUENCE admin_seq;
DROP SEQUENCE board_seq;
DROP SEQUENCE dress_interest_company_seq;
DROP SEQUENCE dress_company_seq;
DROP SEQUENCE makeup_company_seq;
DROP SEQUENCE dress_auction_apply_seq;
DROP SEQUENCE dress_bid_seq;
DROP SEQUENCE studio_product_seq;
DROP SEQUENCE dress_product_seq;
DROP SEQUENCE studio_bid_seq;
DROP SEQUENCE users_seq;
DROP SEQUENCE point_product_seq;
DROP SEQUENCE point_use_hist_seq;
DROP SEQUENCE point_add_hist_seq;
DROP SEQUENCE question_hist_seq;
DROP SEQUENCE makeup_cvst_list_seq;
DROP SEQUENCE studio_cvst_list_seq;
DROP SEQUENCE dress_cvst_list_seq;
DROP SEQUENCE makeup_bid_product_list_seq;
DROP SEQUENCE studio_bid_product_list_seq;
DROP SEQUENCE dress_bid_product_list_seq;

-- drop table
DROP TABLE studio_interest_product CASCADE CONSTRAINTS;
DROP TABLE makeup_auction_apply CASCADE CONSTRAINTS;
DROP TABLE studio_interest_company CASCADE CONSTRAINTS;
DROP TABLE makeup_interest_product CASCADE CONSTRAINTS;
DROP TABLE makeup_product CASCADE CONSTRAINTS;
DROP TABLE article CASCADE CONSTRAINTS;
DROP TABLE dress_interest_product CASCADE CONSTRAINTS;
DROP TABLE makeup_bid CASCADE CONSTRAINTS;
DROP TABLE makeup_interest_company CASCADE CONSTRAINTS;
DROP TABLE studio_auction_apply CASCADE CONSTRAINTS;
DROP TABLE studio_company CASCADE CONSTRAINTS;
DROP TABLE admin CASCADE CONSTRAINTS;
DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE dress_interest_company CASCADE CONSTRAINTS;
DROP TABLE dress_company CASCADE CONSTRAINTS;
DROP TABLE makeup_company CASCADE CONSTRAINTS;
DROP TABLE dress_auction_apply CASCADE CONSTRAINTS;
DROP TABLE dress_bid CASCADE CONSTRAINTS;
DROP TABLE studio_product CASCADE CONSTRAINTS;
DROP TABLE dress_product CASCADE CONSTRAINTS;
DROP TABLE studio_bid CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;
DROP TABLE point_product CASCADE CONSTRAINTS;
DROP TABLE point_use_hist CASCADE CONSTRAINTS;
DROP TABLE point_add_hist CASCADE CONSTRAINTS;
DROP TABLE question_hist CASCADE CONSTRAINTS;
DROP TABLE makeup_cvst_list CASCADE CONSTRAINTS;
DROP TABLE studio_cvst_list CASCADE CONSTRAINTS;
DROP TABLE dress_cvst_list CASCADE CONSTRAINTS;
DROP TABLE dress_bid_product_list CASCADE CONSTRAINTS;
DROP TABLE studio_bid_product_list CASCADE CONSTRAINTS;
DROP TABLE makeup_bid_product_list CASCADE CONSTRAINTS;

-- create seq
CREATE SEQUENCE studio_interest_product_seq;
CREATE SEQUENCE makeup_auction_apply_seq;
CREATE SEQUENCE studio_interest_company_seq;
CREATE SEQUENCE makeup_interest_product_seq;
CREATE SEQUENCE makeup_product_seq;
CREATE SEQUENCE article_seq;
CREATE SEQUENCE dress_interest_product_seq;
CREATE SEQUENCE makeup_bid_seq;
CREATE SEQUENCE makeup_interest_company_seq;
CREATE SEQUENCE studio_auction_apply_seq;
CREATE SEQUENCE studio_company_seq;
CREATE SEQUENCE admin_seq;
CREATE SEQUENCE board_seq;
CREATE SEQUENCE dress_interest_company_seq;
CREATE SEQUENCE dress_company_seq;
CREATE SEQUENCE makeup_company_seq;
CREATE SEQUENCE dress_auction_apply_seq;
CREATE SEQUENCE dress_bid_seq;
CREATE SEQUENCE studio_product_seq;
CREATE SEQUENCE dress_product_seq;
CREATE SEQUENCE studio_bid_seq;
CREATE SEQUENCE users_seq;
CREATE SEQUENCE point_product_seq;
CREATE SEQUENCE point_use_hist_seq;
CREATE SEQUENCE point_add_hist_seq;
CREATE SEQUENCE question_hist_seq;
CREATE SEQUENCE makeup_cvst_list_seq;
CREATE SEQUENCE studio_cvst_list_seq;
CREATE SEQUENCE dress_cvst_list_seq;


-- create table
CREATE TABLE studio_interest_product (
sip_no number(10) NOT NULL,
user_no number(10) NOT NULL,
sc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (sip_no, user_no, sc_no)
);

CREATE TABLE makeup_auction_apply (
maa_no number(10) NOT NULL,
user_no number(10) NOT NULL,
maa_loc varchar2(100) NOT NULL,
maa_date date NOT NULL,
maa_memo varchar2(3000),
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (maa_no, user_no)
);

CREATE TABLE studio_interest_company (
sic_no number(10) NOT NULL,
user_no number(10) NOT NULL,
sc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (sic_no, user_no, sc_no)
);

CREATE TABLE makeup_interest_product (
mip_no number(10) NOT NULL,
user_no number(10) NOT NULL,
mc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (mip_no, user_no, mc_no)
);

CREATE TABLE makeup_product (
mp_no number(10) NOT NULL,
mc_no number(10) NOT NULL,
mp_image varchar2(300),
mp_price number(20) DEFAULT 0 NOT NULL,
mp_acc_yn varchar2(1) DEFAULT 'N' NOT NULL,
mp_family_yn varchar2(1) DEFAULT 'N' NOT NULL,
mp_hair_yn varchar2(1) DEFAULT 'N' NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (mp_no, mc_no)
);

CREATE TABLE article (
article_no number(10) NOT NULL,
board_no number(10) NOT NULL,
user_no number(10) NOT NULL,
article_head varchar2(50) NOT NULL,
article_title varchar2(100) NOT NULL,
article_content varchar2(3000) NOT NULL,
hitcount number(20) DEFAULT 0,
reply_no number(10),
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (article_no, board_no, user_no)
);

CREATE TABLE dress_interest_product (
dip_no number(10) NOT NULL,
user_no number(10) NOT NULL,
dp_no number(10) NOT NULL,
dc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (dip_no, user_no, dp_no, dc_no)
);

CREATE TABLE makeup_bid (
mb_no number(10) NOT NULL,
mc_no number(10) NOT NULL,
maa_no number(10) NOT NULL,
user_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (mb_no, mc_no, maa_no, user_no)
);

CREATE TABLE makeup_interest_company (
mic_no number(10) NOT NULL,
user_no number(10) NOT NULL,
mc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (mic_no, user_no, mc_no)
);

CREATE TABLE studio_auction_apply (
saa_no number(10) NOT NULL,
user_no number(10) NOT NULL,
saa_loc varchar2(100) NOT NULL,
saa_date date NOT NULL,
saa_memo varchar2(3000),
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (saa_no, user_no)
);

CREATE TABLE studio_company (
sc_no number(10) NOT NULL,
sc_nm varchar2(30) NOT NULL,
sc_company_no number(20) NOT NULL,
sc_main_nm varchar2(30) NOT NULL,
sc_addr varchar2(100) NOT NULL,
sc_main_image varchar2(300) NOT NULL,
sc_email varchar2(50) NOT NULL,
sc_pw varchar2(20) NOT NULL,
sc_tel number(20) NOT NULL,
sc_introduce varchar2(300),
sessionkey varchar2(50) DEFAULT 'none' NOT NULL,
sessionlimit date,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (sc_no)
);

CREATE TABLE admin (
admin_no number(10) NOT NULL,
admin_email varchar2(50) NOT NULL,
admin_nm varchar2(30) NOT NULL,
admin_pw varchar2(20) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (admin_no)
);

CREATE TABLE board (
board_no number(10) NOT NULL,
board_nm varchar2(100) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (board_no)
);

CREATE TABLE dress_interest_company (
dic_no number(10) NOT NULL,
user_no number(10) NOT NULL,
dc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (dic_no, user_no, dc_no)
);

CREATE TABLE dress_company (
dc_no number(10) NOT NULL,
dc_nm varchar2(30) NOT NULL,
dc_company_no number(20) NOT NULL,
dc_main_nm varchar2(30) NOT NULL,
dc_addr varchar2(100) NOT NULL,
dc_main_image varchar2(300),
dc_email varchar2(50) NOT NULL,
dc_pw varchar2(20) NOT NULL,
dc_tel number(20) NOT NULL,
dc_introduce varchar2(3000),
sessionkey varchar2(50) DEFAULT 'none' NOT NULL,
sessionlimit date,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (dc_no)
);

CREATE TABLE makeup_company (
mc_no number(10) NOT NULL,
mc_nm varchar2(30) NOT NULL,
mc_company_no number(20) NOT NULL,
mc_main_nm varchar2(30) NOT NULL,
mc_addr varchar2(100) NOT NULL,
mc_main_image varchar2(300),
mc_email varchar2(50) NOT NULL,
mc_pw varchar2(20) NOT NULL,
mc_tel number(20) NOT NULL,
mc_introduce varchar2(3000),
sessionkey varchar2(50) DEFAULT 'none' NOT NULL,
sessionlimit date,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (mc_no)
);

CREATE TABLE dress_auction_apply (
daa_no number(10) NOT NULL,
user_no number(10) NOT NULL,
daa_loc varchar2(100) NOT NULL,
daa_date date NOT NULL,
daa_memo varchar2(3000),
regdate date DEFAULT sysdate NOT NULL,
updatedate date NOT NULL,
PRIMARY KEY (daa_no, user_no)
);

CREATE TABLE dress_bid (
db_no number(10) NOT NULL,
user_no number(10) NOT NULL,
daa_no number(10) NOT NULL,
dc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (db_no, user_no, daa_no, dc_no)
);

CREATE TABLE studio_product (
sp_no number(10) NOT NULL,
sc_no number(10) NOT NULL,
sp_price number(20) NOT NULL,
sp_apv_yn varchar2(1) NOT NULL,
sp_image varchar2(300),
sp_total_yn varchar2(1) NOT NULL,
sp_shoot_type varchar2(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (sp_no, sc_no)
);

CREATE TABLE dress_product (
dp_no number(10) NOT NULL,
dc_no number(10) NOT NULL,
dp_style varchar2(20) NOT NULL,
dp_image varchar2(200),
dp_price number(20) DEFAULT 0 NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (dp_no, dc_no)
);

CREATE TABLE studio_bid (
sb_no number(10) NOT NULL,
saa_no number(10) NOT NULL,
user_no number(10) NOT NULL,
sc_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (sb_no, saa_no, user_no, sc_no)
);

CREATE TABLE users (
user_no number(10) NOT NULL,
user_email varchar2(50) NOT NULL,
user_pw varchar2(20) NOT NULL,
user_birthday date NOT NULL,
user_addr varchar2(100) NOT NULL,
user_tel number(20) NOT NULL,
user_point number(30) DEFAULT 0 NOT NULL,
sessionkey varchar2(50) DEFAULT 'none' NOT NULL,
sessionlimit date,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (user_no)
);

CREATE TABLE point_product (
pp_no number(10) NOT NULL,
pp_nm varchar2(100) NOT NULL,
pp_price number(20) DEFAULT 0 NOT NULL,
pp_count number(10) DEFAULT 1 NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (pp_no)
);

CREATE TABLE point_use_hist (
pah_no number(10) NOT NULL,
user_no number(10) NOT NULL,
pp_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (pah_no, user_no, pp_no)
);

CREATE TABLE point_add_hist (
pah_no number(10) NOT NULL,
user_no number(10) NOT NULL,
pah_add_num number(20) DEFAULT 0 NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (pah_no, user_no)
);

CREATE TABLE question_hist (
qh_no number(10) NOT NULL,
user_no number(10) NOT NULL,
admin_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (qh_no, user_no, admin_no)
);

CREATE TABLE makeup_cvst_list (
mcl_no number(10) NOT NULL,
user_no number(10) NOT NULL,
mc_no number(10) NOT NULL,
mcl_content varchar2(3000) NOT NULL,
mp_no number(10),
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (mcl_no, user_no, mc_no)
);

CREATE TABLE studio_cvst_list (
mcl_no number(10) NOT NULL,
user_no number(10) NOT NULL,
sc_no number(10) NOT NULL,
mcl_content varchar2(3000) NOT NULL,
sp_no number(10) NOT NULL,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (mcl_no, user_no, sc_no)
);

CREATE TABLE dress_cvst_list (
dcl_no number(10) NOT NULL,
user_no number(10) NOT NULL,
dc_no number(10) NOT NULL,
dcl_content varchar2(3000) NOT NULL,
dp_no number(10),
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL,
PRIMARY KEY (dcl_no, user_no, dc_no)
);

CREATE TABLE dress_bid_product_list (
dbpl_no number(10) NOT NULL,
db_no number(10) NOT NULL,
user_no number(10) NOT NULL,
daa_no number(10) NOT NULL,
dc_no number(10) NOT NULL,
dp_no number(10) NOT NULL,
dbpl_discount number(3),
dbpl_meet_date date,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL
);

CREATE TABLE studio_bid_product_list (
sbpl_no number(10) NOT NULL,
sb_no number(10) NOT NULL,
saa_no number(10) NOT NULL,
user_no number(10) NOT NULL,
sc_no number(10) NOT NULL,
sp_no number(10) NOT NULL,
sbpl_discount number(3),
sbpl_meet_date date,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL
);

CREATE TABLE makeup_bid_product_list (
mbpl_no number(10) NOT NULL,
mb_no number(10) NOT NULL,
mc_no number(10) NOT NULL,
maa_no number(10) NOT NULL,
user_no number(10) NOT NULL,
mp_no number(10) NOT NULL,
mbpl_discount number(3),
mbpl_meet_date date,
regdate date DEFAULT sysdate NOT NULL,
updatedate date DEFAULT sysdate NOT NULL
);

-- constraint
ALTER TABLE article ADD CONSTRAINT article_board_fk FOREIGN KEY (board_no) REFERENCES board (board_no);
ALTER TABLE article ADD CONSTRAINT article_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE dress_auction_apply ADD CONSTRAINT daa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE dress_interest_company ADD CONSTRAINT dic_user_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE dress_interest_company ADD CONSTRAINT dic_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no);
ALTER TABLE dress_interest_product ADD CONSTRAINT dip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE dress_product ADD CONSTRAINT dp_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no);
ALTER TABLE dress_interest_product ADD CONSTRAINT dip_dp_fk FOREIGN KEY (dp_no, dc_no) REFERENCES dress_product (dp_no, dc_no);
ALTER TABLE makeup_interest_company ADD CONSTRAINT mic_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE makeup_interest_company ADD CONSTRAINT mic_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no);
ALTER TABLE makeup_interest_product ADD CONSTRAINT mip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE makeup_interest_product ADD CONSTRAINT mip_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no);
ALTER TABLE makeup_auction_apply ADD CONSTRAINT maa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE makeup_bid ADD CONSTRAINT mb_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no);
ALTER TABLE makeup_bid ADD CONSTRAINT mb_maa_fk FOREIGN KEY (maa_no, user_no) REFERENCES makeup_auction_apply (maa_no, user_no);
ALTER TABLE makeup_product ADD CONSTRAINT mp_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no);
ALTER TABLE studio_auction_apply ADD CONSTRAINT saa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE studio_bid ADD CONSTRAINT sb_saa_fk FOREIGN KEY (saa_no, user_no) REFERENCES studio_auction_apply (saa_no, user_no);
ALTER TABLE studio_bid ADD CONSTRAINT sb_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no);
ALTER TABLE studio_product ADD CONSTRAINT sp_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no);
ALTER TABLE studio_interest_company ADD CONSTRAINT sic_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE studio_interest_product ADD CONSTRAINT sip_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE studio_interest_company ADD CONSTRAINT sic_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no);
ALTER TABLE studio_interest_product ADD CONSTRAINT sip_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no);
ALTER TABLE dress_bid ADD CONSTRAINT db_daa_fk FOREIGN KEY (daa_no, user_no) REFERENCES dress_auction_apply (daa_no, user_no);
ALTER TABLE dress_bid ADD CONSTRAINT db_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no);
ALTER TABLE point_use_hist ADD CONSTRAINT puh_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE point_use_hist ADD CONSTRAINT puh_pp_fk FOREIGN KEY (pp_no) REFERENCES point_product (pp_no);
ALTER TABLE point_add_hist ADD CONSTRAINT pah_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE question_hist ADD CONSTRAINT qh_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE question_hist ADD CONSTRAINT qh_admin_fk FOREIGN KEY (admin_no) REFERENCES admin (admin_no);
ALTER TABLE makeup_cvst_list ADD CONSTRAINT mcl_mc_fk FOREIGN KEY (mc_no) REFERENCES makeup_company (mc_no);
ALTER TABLE makeup_cvst_list ADD CONSTRAINT mcl_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE makeup_cvst_list ADD CONSTRAINT mcl_mp_fk FOREIGN KEY (mp_no, mc_no) REFERENCES makeup_product (mp_no, mc_no);
ALTER TABLE studio_cvst_list ADD CONSTRAINT scl_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE studio_cvst_list ADD CONSTRAINT scl_sc_fk FOREIGN KEY (sc_no) REFERENCES studio_company (sc_no);
ALTER TABLE studio_cvst_list ADD CONSTRAINT scl_sp_fk FOREIGN KEY (sp_no, sc_no) REFERENCES studio_product (sp_no, sc_no);
ALTER TABLE dress_cvst_list ADD CONSTRAINT dcl_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);
ALTER TABLE dress_cvst_list ADD CONSTRAINT dcl_dc_fk FOREIGN KEY (dc_no) REFERENCES dress_company (dc_no);
ALTER TABLE dress_cvst_list ADD CONSTRAINT dcl_dp FOREIGN KEY (dp_no, dc_no) REFERENCES dress_product (dp_no, dc_no);

-- insert data
-- admin
desc admin;

INSERT INTO admin (admin_no, admin_email, admin_nm, admin_pw) VALUES (admin_seq.nextval, 'admin@undefined.com' , '관리자1', 'q1w2e3r4');
INSERT INTO admin (admin_no, admin_email, admin_nm, admin_pw) VALUES (admin_seq.nextval, 'admin2@undefined.com', '관리자2', '1234');
INSERT INTO admin (admin_no, admin_email, admin_nm, admin_pw) VALUES (admin_seq.nextval, 'admin3@undefined.com', '관리자3', '1q2w3e4r');

SELECT * FROM admin;

-- users
desc users;

INSERT INTO users (user_no, user_email, user_pw, user_birthday, user_addr, user_tel, user_point) 
 VALUES (users_seq.nextval, 'kosta@naver.com', '1234', to_date('1990-01-11'), '서울특별시 금천구 가산디지털1로 151 이노플렉스 1차 2층', 07050395805, 0);
INSERT INTO users (user_no, user_email, user_pw, user_birthday, user_addr, user_tel, user_point) 
 VALUES (users_seq.nextval, 'dleo200@naver.com', '1q2w3e4r', to_date('1990-01-11'), '경기도 고양시 덕양구 관산동', 01083768171, 0);
SELECT * FROM users;

-- board
desc board;

INSERT INTO board (board_no, board_nm) VALUES (board_seq.nextval, '공지사항');
INSERT INTO board (board_no, board_nm) VALUES (board_seq.nextval, '자유게시판');

SELECT * FROM board;

commit;