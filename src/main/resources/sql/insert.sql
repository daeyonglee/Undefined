insert into studio_company
values(
studio_company_seq.nextval,
CONCAT('스튜디오-', studio_company_seq.currval),
1234512345,
CONCAT('스튜디오-', studio_company_seq.currval),
CONCAT('주소-', studio_company_seq.currval),
CONCAT('studio-', studio_company_seq.currval),
'email',
'password',
01029601732,
'업체 소개하는 칼럼',
'none',
sysdate,
sysdate,
sysdate
);

Insert into studio_company (sc_no, sc_nm, sc_company_no, sc_main_nm, sc_addr, sc_main_image, sc_email, sc_pw, sc_tel, sc_introduce, sessionkey, regdate, updatedate)
values (studio_company_seq.nextval, '강남힐스튜디오', studio_company_seq.currval, '홍길동', '서울특별시 서초구 강남대로 375 서초현대타워빌딩', '메인사진', 'gangnamhill@naver.com', '1234', 01012345678,'우리 강남힐스튜디오는 33년의 깊은 전통을 가지고 있습니다.', DEFAULT, SYSDATE, SYSDATE);

insert into studio_company (sc_no, sc_nm, sc_company_no, sc_main_nm, sc_addr, sc_main_image, sc_email, sc_pw, sc_tel, sc_introduce, sessionkey, regdate, updatedate)
values (studio_company_seq.nextval, '코코 메이크업', studio_company_seq.currval, '이대용', '서울특별시 서대문구 대현동 40-4', '메인사진경로', 'coco@gmail.com', 'coco', 023927909, '코코 하세요 코코', DEFAULT, SYSDATE, SYSDATE);

Insert into studio_company (sc_no, sc_nm, sc_company_no, sc_main_nm, sc_addr, sc_main_image, sc_email, sc_pw, sc_tel, sc_introduce, sessionkey, regdate, updatedate)
values (studio_company_seq.nextval, '24/7스튜디오', studio_company_seq.currval, '김길동', '서울특별시 강남구 청담동 80-17', '메인사진', 'gangnamhill@naver.com', '1234', 01012345678,'24시간 7일 일주일동안 언제나 라는 뜻의 24/7스튜디오 입니다.', DEFAULT, SYSDATE, SYSDATE);

Insert into studio_company (sc_no, sc_nm, sc_company_no, sc_main_nm, sc_addr, sc_main_image, sc_email, sc_pw, sc_tel, sc_introduce, sessionkey, regdate, updatedate)
values (studio_company_seq.nextval, '느와르블랑', studio_company_seq.currval, '김길동', '서울특별시 강남구 청담동 128-22', '메인사진', 'gangnamhill@naver.com', '1234', 01012345678,'느와르 블랑 스튜디오입니다. 사진찍는 것을 두려워 하지 마세요. 당신의 아름다운 모습을 찾아드립니다.', DEFAULT, SYSDATE, SYSDATE);

select * from studio_company;

insert into dress_company
values(
dress_company_seq.nextval,
CONCAT('드레스-', dress_company_seq.currval),
1234512345,
CONCAT('드레스-', dress_company_seq.currval),
CONCAT('주소-', dress_company_seq.currval),
CONCAT('dress-', dress_company_seq.currval),
'email',
'password',
01029601732,
'업체 소개하는 칼럼',
'none',
sysdate,
sysdate,
sysdate
);

select * from dress_company;

insert into makeup_company
values(
makeup_company_seq.nextval,
CONCAT('메이크업-', makeup_company_seq.currval),
1234512345,
CONCAT('메이크업-', makeup_company_seq.currval),
CONCAT('주소-', makeup_company_seq.currval),
CONCAT('makeup-', makeup_company_seq.currval),
'email',
'password',
01029601732,
'업체 소개하는 칼럼',
'none',
sysdate,
sysdate,
sysdate
);

select * from makeup_company;

insert into studio_company
values(
studio_company_seq.nextval,
studio_company_seq.currval,
555555555555,
studio_company_seq.currval,
studio_company_seq.currval,
studio_company_seq.currval,
'jongchanyi@nate.com',
'12345678',
01065076516,
'스드드드메메메이이이이크크어어어업',
'none',
sysdate,
sysdate,
sysdate
);

insert into dress_company
values(
dress_company_seq.nextval,
dress_company_seq.currval,
666655555111,
dress_company_seq.currval,
dress_company_seq.currval,
dress_company_seq.currval,
'jongchanyi@nate.com',
'12345678',
01065076516,
'스드드드메메메이이이이크크어어어업',
'none',
sysdate,
sysdate,
sysdate
);

insert into makeup_company
values(
makeup_company_seq.nextval,
makeup_company_seq.currval,
55444333222,
makeup_company_seq.currval,
makeup_company_seq.currval,
makeup_company_seq.currval,
'jongchanyi@nate.com',
'12345678',
01065076516,
'스드드드메메메이이이이크크어어어업',
'none',
sysdate,
sysdate,
sysdate
);

commit;

-- 테스트를 위한 신청서 리스트(dress)
-- 테스트를 위한 신청서 리스트(dress)
INSERT INTO dress_auction_apply  (
            daa_no
          , user_no
          , daa_loc
          , daa_date
          , daa_deadline
          , daa_memo
          , daa_stat
          , updatedate)
VALUES    (dress_auction_apply_seq.NEXTVAL
          , 1
          , '인천시 부평구2'
          , '2019-01-01'
          , '2018-05-31' 
          , '샤랄라~~~~22'
          , '낙찰'
          , sysdate);
          
INSERT INTO dress_auction_apply  (
            daa_no
          , user_no
          , daa_loc
          , daa_date
          , daa_deadline
          , daa_memo
          , daa_stat
          , updatedate)
VALUES    (dress_auction_apply_seq.NEXTVAL
          , 2
          , '서울시 성동구'
          , '2019-01-01'
          , '2018-06-01' 
          , '결혼임박'
          , '낙찰'
          , sysdate);
COMMIT;


SELECT *
FROM dress_auction_apply;


-- 테스트를 위한 신청서 리스트(studio)
INSERT INTO studio_auction_apply (
            saa_no
          , user_no
          , saa_loc
          , saa_date
          , saa_deadline
          , saa_memo
          , saa_stat
          , updatedate)
VALUES    (studio_auction_apply_seq.NEXTVAL
          , 1
          , '인천광역시 중구2'
          , '2019-10-28'
          , '2018-05-26' 
          , '가까운 스튜디오 선호요^^'
          , sysdate);

INSERT INTO studio_auction_apply (
            saa_no
          , user_no
          , saa_loc
          , saa_date
          , saa_deadline
          , saa_memo
          , updatedate)
VALUES    (studio_auction_apply_seq.NEXTVAL
          , 1
          , '서울시 강남구4'
          , '2019-10-28'
          , '2018-05-26' 
          , '자연스러운 거 원함요'
          , '낙찰대기중'
          , sysdate);

COMMIT;

SELECT *
FROM studio_auction_apply;

-- 테스트를 위한 신청서 리스트(makeup)

INSERT INTO makeup_auction_apply(
            maa_no
          , user_no
          , maa_loc
          , maa_date
          , maa_deadline
          , maa_memo
          , maa_stat
          , updatedate)
VALUES    (makeup_auction_apply_seq.NEXTVAL
          , 1
          , '인천광역시 중구10'
          , '2019-10-28'
          , '2018-05-26' 
          , '원장님 플리즈'
          , '낙찰'
          , sysdate);

INSERT INTO makeup_auction_apply(
            maa_no
          , user_no
          , maa_loc
          , maa_date
          , maa_deadline
          , maa_memo
          , maa_stat
          , updatedate)
VALUES    (makeup_auction_apply_seq.NEXTVAL
          , 2
          , '서울시 서대문구3'
          , '2019-10-28'
          , '2018-05-26' 
          , '아몰랑'
          , '낙찰'
          , sysdate);

COMMIT;


COMMIT;

