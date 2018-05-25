desc dress_auction_apply;
desc studio_auction_apply;
desc makeup_auction_apply;

-- no 시퀀스 등록
CREATE SEQUENCE studio_auction_apply_seq;
CREATE SEQUENCE dress_auction_apply_seq;
CREATE SEQUENCE makeup_auction_apply_seq;

-- 고객 역경매 신청 
-- 고객 역경매 신청(스튜디오) 
CREATE TABLE studio_auction_apply 
  ( 
     saa_no       NUMBER(10) NOT NULL, 
     user_no      NUMBER(10) NOT NULL, 
     user_nm      VARCHAR2(30) NOT NULL,
     saa_loc      VARCHAR2(100) NOT NULL, 
     saa_date     DATE NOT NULL, 
     saa_deadline DATE NOT NULL,
     saa_memo     VARCHAR2(3000), 
     regdate      DATE DEFAULT SYSDATE NOT NULL, 
     updatedate   DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (saa_no, user_no) 
  ); 

-- 고객 역경매 신청(드레스) 
CREATE TABLE dress_auction_apply 
  ( 
     daa_no       NUMBER(10) NOT NULL, 
     user_no      NUMBER(10) NOT NULL, 
     user_nm      VARCHAR2(30) NOT NULL,
     daa_loc      VARCHAR2(100) NOT NULL, 
     daa_date     DATE NOT NULL, 
     daa_deadline DATE NOT NULL,
     daa_memo     VARCHAR2(3000), 
     regdate      DATE DEFAULT SYSDATE NOT NULL, 
     updatedate   DATE NOT NULL, 
     PRIMARY KEY (daa_no, user_no) 
  ); 

-- 고객 역경매 신청(메이크업) 
CREATE TABLE makeup_auction_apply 
  ( 
     maa_no       NUMBER(10) NOT NULL, 
     user_no      NUMBER(10) NOT NULL,
     user_nm      VARCHAR2(30) NOT NULL,
     maa_loc      VARCHAR2(100) NOT NULL, 
     maa_date     DATE NOT NULL, 
     maa_deadline DATE NOT NULL,
     maa_memo     VARCHAR2(3000), 
     regdate      DATE DEFAULT SYSDATE NOT NULL, 
     updatedate   DATE DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (maa_no, user_no) 
  ); 


-- 제약조건 추가
ALTER TABLE studio_auction_apply 
  ADD CONSTRAINT saa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);

ALTER TABLE dress_auction_apply 
  ADD CONSTRAINT daa_users_fk FOREIGN KEY (user_no) REFERENCES users (user_no);

ALTER TABLE makeup_auction_apply 
  ADD CONSTRAINT maa_users_fk FOREIGN KEY (user_no) REFERENCES users  (user_no);


-- 테스트를 위한 신청서 리스트(dress)

INSERT INTO dress_auction_apply  (
            daa_no
          , user_no
          , user_nm
          , daa_loc
          , daa_date
          , daa_deadline
          , daa_memo
          , updatedate)
VALUES    (dress_auction_apply_seq.NEXTVAL
          , 21
          , (SELECT user_nm
             FROM users
             WHERE user_no = 21)
          , '인천광역시 중구7'
          , '2019-10-28'
          , '2018-05-26' 
          , '섹시한 선호요222^^'
          , sysdate);
rollback;


COMMIT;


SELECT *
FROM dress_auction_apply;

-- 테스트를 위한 신청서 리스트(stuio)
INSERT INTO studio_auction_apply (
            saa_no
          , user_no
          , user_nm
          , saa_loc
          , saa_date
          , saa_deadline
          , saa_memo
          , updatedate)
VALUES    (studio_auction_apply_seq.NEXTVAL
          , 22
          , (SELECT user_nm
             FROM users
             WHERE user_no = 22)
          , '인천광역시 중구5'
          , '2019-10-28'
          , '2018-05-26' 
          , '퓨어한 스튜디오 선호요^^'
          , sysdate);

INSERT INTO studio_auction_apply (
            saa_no
          , user_no
          , user_nm
          , saa_loc
          , saa_date
          , saa_deadline
          , saa_memo
          , updatedate)
VALUES    (studio_auction_apply_seq.NEXTVAL
          , 22
          , (SELECT user_nm
             FROM users
             WHERE user_no = 22)
          , '인천광역시 중구2'
          , '2019-10-28'
          , '2018-05-26' 
          , '퓨어한 메이크업 선호요^^'
          , sysdate);

COMMIT;

SELECT *
FROM studio_auction_apply;

-- 테스트를 위한 신청서 리스트(makeup)

INSERT INTO makeup_auction_apply(
            maa_no
          , user_no
          , user_nm
          , maa_loc
          , maa_date
          , maa_deadline
          , maa_memo
          , updatedate)
VALUES    (makeup_auction_apply_seq.NEXTVAL
          , 22
          , (SELECT user_nm
             FROM users
             WHERE user_no = 22)
          , '인천광역시 중구2'
          , '2019-10-28'
          , '2018-05-26' 
          , '퓨어한 메이크업 선호요^^'
          , sysdate);

INSERT INTO makeup_auction_apply(
            maa_no
          , user_no
          , user_nm
          , maa_loc
          , maa_date
          , maa_deadline
          , maa_memo
          , updatedate)
VALUES    (makeup_auction_apply_seq.NEXTVAL
          , 21
          , (SELECT user_nm
             FROM users
             WHERE user_no = 21)
          , '인천광역시 중구3'
          , '2019-10-28'
          , '2018-05-26' 
          , '퓨어한 메이크업 선호요^^'
          , sysdate);

INSERT INTO makeup_auction_apply(
            maa_no
          , user_no
          , user_nm
          , maa_loc
          , maa_date
          , maa_deadline
          , maa_memo
          , updatedate)
VALUES    (makeup_auction_apply_seq.NEXTVAL
          , 21
          , (SELECT user_nm
             FROM users
             WHERE user_no = 21)
          , '인천광역시 중구4'
          , '2019-10-28'
          , '2018-05-26' 
          , '퓨어한 메이크업 선호요^^'
          , sysdate);

INSERT INTO makeup_auction_apply(
            maa_no
          , user_no
          , user_nm
          , maa_loc
          , maa_date
          , maa_deadline
          , maa_memo
          , updatedate)
VALUES    (makeup_auction_apply_seq.NEXTVAL
          , 21
          , (SELECT user_nm
             FROM users
             WHERE user_no = 21)
          , '인천광역시 중구5'
          , '2019-10-28'
          , '2018-05-26' 
          , '퓨어한 메이크업 선호요^^'
          , sysdate);

COMMIT;

SELECT *
FROM users;

SELECT user_nm
                    FROM users
                    WHERE user_no = 21;
                    
SELECT *
FROM dress_auction_apply;

SELECT *
FROM studio_auction_apply;

SELECT *
FROM makeup_auction_apply;

SELECT  d.daa_no no
      , u.user_no
      , u.user_nm
      , d.daa_loc loc
      , SUBSTR(to_char(d.daa_date, 'YYYY-MM-DD HH24:MI'),0,10) day
      , SUBSTR(to_char(d.daa_date, 'YYYY-MM-DD HH24:MI'),12,7) time
      , d.daa_memo memo
      ,'dress' type
FROM   dress_auction_apply d
       JOIN users u 
         ON d.user_no = u.user_no;


SELECT  d.daa_no no
      , u.user_no
      , u.user_nm
      , d.daa_loc loc
      , SUBSTR(to_char(d.daa_date, 'YYYY-MM-DD HH24:MI'),0,10) day
      , SUBSTR(to_char(d.daa_date, 'YYYY-MM-DD HH24:MI'),12,7) time
      , d.daa_memo memo
      ,'dress' type
FROM   dress_auction_apply d
       JOIN users u 
         ON d.user_no = u.user_no
UNION
SELECT m.maa_no no
     , u.user_no
     , u.user_nm     
     , m.maa_loc loc
     , SUBSTR(to_char(m.maa_date, 'YYYY-MM-DD HH24:MI'),0,10) day
     , SUBSTR(to_char(m.maa_date, 'YYYY-MM-DD HH24:MI'),12,7) time
     , m.maa_memo memo
     ,'makeup' type
  FROM makeup_auction_apply m
       JOIN users u 
         ON m.user_no = u.user_no
UNION
SELECT s.saa_no no
     , u.user_no
     , u.user_nm
     , s.saa_loc loc
     , SUBSTR(to_char(s.saa_date, 'YYYY-MM-DD HH24:MI'),0,10) day
     , SUBSTR(to_char(s.saa_date, 'YYYY-MM-DD HH24:MI'),12,7) time
     , s.saa_memo memo
     , 'studio' type
  FROM studio_auction_apply s
       JOIN users u
         ON s.user_no = u.user_no;

SELECT TO_CHAR(TO_DATE('2015/05/15 15:30', 'YYYY/MM/DD HH24:MI'), 'YYYY/MM/DD HH24:MI')
FROM dual;

ALTER TABLE dress_auction_apply
ADD COLUMN user_nm VARCHAR2(30);