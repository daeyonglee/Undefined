desc dress_auction_apply;
desc studio_auction_apply;
desc makeup_auction_apply;

-- no 시퀀스 등록
CREATE SEQUENCE studio_auction_apply_seq;
CREATE SEQUENCE dress_auction_apply_seq;
CREATE SEQUENCE makeup_auction_apply_seq;


-- 테스트를 위한 신청서 리스트(dress)

INSERT INTO dress_auction_apply (daa_no, user_no, daa_loc, daa_date, daa_memo, updatedate)
VALUES (dress_auction_apply_seq.NEXTVAL, 1, '서울시 강남구', '2019-10-28', '오후 시간 대로 예식 치를 예정이에여~', sysdate);

INSERT INTO dress_auction_apply (daa_no, user_no, daa_loc, daa_date, daa_memo, updatedate)
VALUES (dress_auction_apply_seq.NEXTVAL, 1, '서울시 서대문구', '2019-10-28', '오후 시간 대로 예식 치를 예정이에여~', sysdate);

INSERT INTO dress_auction_apply (daa_no, user_no, daa_loc, daa_date, daa_memo, updatedate)
VALUES (dress_auction_apply_seq.NEXTVAL, 2, '인천광역시 부평구', '2019-10-28', '메롱', sysdate);

INSERT INTO dress_auction_apply (daa_no, user_no, daa_loc, daa_date, daa_memo, updatedate)
VALUES (dress_auction_apply_seq.NEXTVAL, 2, '인천광역시 중구', '2019-10-28', '아몰랑~', sysdate);

COMMIT;


SELECT *
FROM dress_auction_apply;

-- 테스트를 위한 신청서 리스트(stuio)

INSERT INTO studio_auction_apply (saa_no, user_no, saa_loc, saa_date, saa_memo, updatedate)
VALUES (studio_auction_apply_seq.NEXTVAL, 1, '서울시 강남구', '2019-10-28', '평일에 가능?', sysdate);

INSERT INTO studio_auction_apply (saa_no, user_no, saa_loc, saa_date, saa_memo, updatedate)
VALUES (studio_auction_apply_seq.NEXTVAL, 2, '인천광역시 중구', '2019-10-28', '스냅 꼭염', sysdate);

INSERT INTO studio_auction_apply (saa_no, user_no, saa_loc, saa_date, saa_memo, updatedate)
VALUES (studio_auction_apply_seq.NEXTVAL, 1, '서울시 성동구', '2019-10-28', '평일에 가능?', sysdate);

INSERT INTO studio_auction_apply (saa_no, user_no, saa_loc, saa_date, saa_memo, updatedate)
VALUES (studio_auction_apply_seq.NEXTVAL, 1, '서울시 서대문구', '2019-10-28', '평일에 가능?', sysdate);

INSERT INTO studio_auction_apply (saa_no, user_no, saa_loc, saa_date, saa_memo, updatedate)
VALUES (studio_auction_apply_seq.NEXTVAL, 2, '인천광역시 남동구', '2019-10-28', '평일에 가능?', sysdate);

COMMIT;

SELECT *
FROM studio_auction_apply;

-- 테스트를 위한 신청서 리스트(makeup)

INSERT INTO makeup_auction_apply(maa_no, user_no, maa_loc, maa_date, maa_memo, updatedate)
VALUES (makeup_auction_apply_seq.NEXTVAL, 1, '서울시 강남구', '2019-10-28', '퓨어한 메이크업 선호요^^', sysdate);

INSERT INTO makeup_auction_apply(maa_no, user_no, maa_loc, maa_date, maa_memo, updatedate)
VALUES (makeup_auction_apply_seq.NEXTVAL, 1, '서울시 서대문구', '2019-10-28', '퓨어한 메이크업 선호요^^7', sysdate);

INSERT INTO makeup_auction_apply(maa_no, user_no, maa_loc, maa_date, maa_memo, updatedate)
VALUES (makeup_auction_apply_seq.NEXTVAL, 2, '인천광역시 부평구', '2019-10-28', '섹시한 메이크업 선호요^^', sysdate);

INSERT INTO makeup_auction_apply(maa_no, user_no, maa_loc, maa_date, maa_memo, updatedate)
VALUES (makeup_auction_apply_seq.NEXTVAL, 2, '인천광역시 중구', '2019-10-28', '퓨어한 메이크업 선호요^^', sysdate);

COMMIT;

SELECT *
FROM dress_auction_apply;

SELECT *
FROM studio_auction_apply;

SELECT *
FROM makeup_auction_apply;

SELECT daa_no no
     , user_no
     , daa_loc loc
     , SUBSTR(to_char(daa_date, 'YYYY-MM-DD HH24:MI'),0,10) day
     , SUBSTR(to_char(daa_date, 'YYYY-MM-DD HH24:MI'),12,7) time
     , daa_memo memo
     ,'dress' type
  FROM dress_auction_apply
UNION
SELECT maa_no no
     , user_no
     , maa_loc loc
     , SUBSTR(to_char(maa_date, 'YYYY-MM-DD HH24:MI'),0,10) day
     , SUBSTR(to_char(maa_date, 'YYYY-MM-DD HH24:MI'),12,7) time
     , maa_memo memo
     ,'makeup' type
  FROM makeup_auction_apply
UNION
SELECT saa_no no
     , user_no
     , saa_loc loc
     , SUBSTR(to_char(saa_date, 'YYYY-MM-DD HH24:MI'),0,10) day
     , SUBSTR(to_char(saa_date, 'YYYY-MM-DD HH24:MI'),12,7) time
     , saa_memo memo
     , 'studio' type
  FROM studio_auction_apply
  ORDER BY user_no asc;