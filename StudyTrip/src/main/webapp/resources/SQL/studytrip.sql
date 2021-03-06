show user;


<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
-- 스토리 테이블
create table story  
(story_num      NVARCHAR2(20)     --  (P.K)  권한번호
,title          NVARCHAR2(300)          not null    -- 타이틀  
,content        NVARCHAR2(500)          not null    -- 제목
,write_date     date default sysdate                -- 작성일자 
,groupno        number                not null      -- 그룹번호
,depthno        number default 0      not null      -- 순서번호
,fk_seq         number default 0       not null     -- 부모글번호
, constraint PK_story_story_num primary key(story_num)
);

-- 스토리 테이블 시퀀스
create sequence seq_story
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 스토리 이미지 테이블
create table story_image
(story_num        nvarchar2(20) not null -- (P.K) 스토리번호
, story_img       nvarchar2(20) not null -- 이미지
, imagefilename   nvarchar2(30) not null -- 바뀐 이미지 파일이름
, constraint PK_story_image primary key(story_num)
, constraint FK_story_image foreign key(story_num) references story(story_num)
);


<<<<<<< HEAD
ALTER TABLE story_image ADD(imagefilename nvarchar2(30)); 
ALTER TABLE story_image MODIFY imagefilename NOT NULL;






=======
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
-- 권한 테이블
create table authority  
(auth_num        NVARCHAR2(20)     --  (P.K)  권한번호
,autho_name       NVARCHAR2(20)          not null   -- 권한이름( 학생: 1, 선생:2, 관리자1: 3 ,관리자2: 4, 관리자3: 5)
, constraint PK_authority_auth_num primary key(auth_num)
);

-- 권한 테이블 시퀀스
create sequence seq_authority
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 쿠폰 테이블
create table coupon  
(coupon_num      nvarchar2(50)     --  (P.K)  쿠폰번호
,coupon_name     nvarchar2(50)     not null -- 쿠폰이름
,issuedate       date default sysdate        -- 발행일
,expi_date       date default sysdate + 100  -- 유효일
,coupon_status   number(1) default 1    -- 쿠폰상태( 사용가능: 1, 불가능: 0)
,constraint PK_coupon_coupon_num primary key(coupon_num)
, constraint CK_coupon_status check( coupon_status in(0,1) )
);
-- 쿠폰 테이블 시퀀스
create sequence seq_coupon
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 회원 테이블
create table members
( useremail     nvarchar2(50)  -- (P.K) 이메일 
, pwd      varchar2(200) not null-- 비밀번호 
, hp         nvarchar2(200) not null -- 휴대전화
, name          nvarchar2(20) not null -- 이름
, profile       varchar2(300) default 'anonymous.png' -- 섬네일(컬럼명 변경) 
, qualifi       nvarchar2(50)       -- 자격조건
, route         nvarchar2(50)       -- 알게된 경로
, status        number(1) default 1     -- (C.K) 상태 (회원이라면:1 회원탈퇴:0)
, registerday   date default sysdate -- 가입일자
, fk_auth_num   nvarchar2(20) not null  -- 권한번호
, fk_coupon_num    nvarchar2(20) not null  -- 권한번호
, constraint PK_member_email primary key( useremail )  
, constraint CK_member_status check( status in(0,1) )
, constraint FK_member_fk_auth_num foreign key(fk_auth_num) references authority (auth_num)
, constraint FK_member_fk_coupon_num foreign key(fk_coupon_num) references coupon (coupon_num)
);

<<<<<<< HEAD
thumbnails

select * from members;


alter table members modify(thumbnails null);

alter table members RENAME COLUMN thumbnails to profile;


=======
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
-- 회원 테이블 시퀀스
create sequence seq_members
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- QnA 테이블
create table qna  
(qna_num        NVARCHAR2(20)     --  (P.K)  qna번호
,fk_useremail   nvarchar2(50)           not null    -- (F.K) 유저이메일
,title          NVARCHAR2(300)          not null    -- 타이틀  
,content        NVARCHAR2(500)          not null    -- 내용
,write_date     date default sysdate                -- 작성일자 
,groupno        number                not null      -- 그룹번호
,depthno        number default 0      not null      -- 순서번호
,fk_seq         number default 0       not null     -- 부모글번호
, constraint PK_qna_qna_num primary key(qna_num)
, constraint FK_qna_fk_useremail foreign key(fk_useremail) references members (useremail)
);

-- QnA 테이블 시퀀스
create sequence seq_story
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 회원게시판 테이블
create table member_board  
(board_num      NVARCHAR2(20)     --  (P.K)  게시판번호
,fk_useremail   nvarchar2(50)           not null    -- (F.K) 유저이메일
,title          NVARCHAR2(300)          not null    -- 타이틀  
,content        NVARCHAR2(500)          not null    -- 내용
,write_date     date default sysdate                -- 작성일자 
,groupno        number                not null      -- 그룹번호
,depthno        number default 0      not null      -- 순서번호
,fk_seq         number default 0       not null     -- 부모글번호
, constraint PK_member_board_board_num primary key(board_num)
, constraint FK_member_board_fk_useremail foreign key(fk_useremail) references members (useremail)
);

-- 회원게시판 시퀀스
create sequence seq_member_board
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 후기 테이블
create table review
(review_num     NVARCHAR2(20)     --  (P.K)  리뷰번호
,fk_useremail   nvarchar2(50)           not null    -- (F.K) 유저이메일
,content        NVARCHAR2(500)          not null    -- 내용
,write_date     date default sysdate                -- 작성일자 
,starpoint      nvarchar2(50)           not null    -- 별점
, constraint PK_review_review_num primary key(review_num)
, constraint FK_review_fk_useremail foreign key(fk_useremail) references members (useremail)
, constraint CK_review_starpoint check( starpoint in(1,2,3,4,5) )
);

-- 후기 테이블 시퀀스
create sequence seq_review
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 공지사항 테이블
create table notice
(notice_num     NVARCHAR2(20)     --  (P.K)  공지사항번호
,fk_useremail   nvarchar2(50)           not null    -- (F.K) 유저이메일
,title          NVARCHAR2(300)          not null    -- 타이틀  
,content        NVARCHAR2(500)          not null    -- 내용
,write_date     date default sysdate                -- 작성일자 
, constraint PK_notice_notice_num primary key(notice_num)
, constraint FK_notice_fk_useremail foreign key(fk_useremail) references members (useremail)
);

-- 공지사항 테이블 시퀀스
create sequence seq_notice
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


<<<<<<< HEAD


-- 자주묻는질문 테이블
=======
-- FAQ 테이블
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
create table faq
(seq            NVARCHAR2(20)              --  (P.K)  faq번호(컬럼명 변경)
,subject        NVARCHAR2(300)          not null    -- 타이틀  
,content        NVARCHAR2(500)          not null    -- 내용
,kind           NVARCHAR2(50)                -- 글분류 
,pw             NVARCHAR2(20)           
, constraint PK_faq_seq primary key(seq)
);

drop table faq;

-- FAQ 테이블 시퀀스
create sequence seq_faq
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

-------------------------------------------------
-- 자료상세조사 테이블
create table research
(research_num         nvarchar2(20)     --  (P.K)  상세조사번호
, point               nvarchar2(20)            not null    -- 포인트(점수)
, name                nvarchar2(20)            not null    -- 이름
, lv                  nvarchar2(20)            not null    -- 레벨
, age                 nvarchar2(20)            not null    -- 나이
, phone               nvarchar2(20)            not null    -- 휴대폰번호
, gender              number(1)                not null    -- 성별     남자 : 1 / 여자 : 2 
, write_date          date default sysdate                 -- 작성일자 
, prefer_area         nvarchar2(20)            not null    -- 선호지역
, prefer_date         date                -- 선호날짜
, constraint PK_research primary key(research_num)
, constraint CK_research_gender check( gender in(0,1) )
);

select *
from research
----------------------------------------------------




-- 상세조사 테이블 시퀀스
create sequence seq_research
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

------------------------------------

-- 파티매칭 테이블
create table party_matching
(partymat_num    NVARCHAR2(20)              --  (P.K)파티매칭번호
,fk_useremail        NVARCHAR2(50)          not null    -- (F.K)유저이메일  
,fk_party_num        NVARCHAR2(20)          not null    -- (F.K)파티번호        
, constraint PK_party_matching primary key(partymat_num)
,constraint FK_party_matching_fk_useremail foreign key(fk_useremail) references members (useremail)
);


-- 파티 테이블
create table party
(party_num            nvarchar2(20)     --  (P.K) 파티번호
, lv                  nvarchar2(20)         not null    -- 레벨
, age                 number(20)             not null   -- 나이
, phone               nvarchar2(20)         not null    -- 휴대폰번호
, account_num         number                not null    -- 계좌번호
, write_date          date default sysdate              -- 작성일자 
, prefer_date         date                -- 선호날짜
, constraint PK_party_num primary key(party_num)
);

-- 파티 테이블 시퀀스
create sequence party
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 파티 이미지 테이블
create table party_image
(party_num            nvarchar2(20)     --  (P.K)(F.K) 스토리번호
,party_img            nvarchar2(20)         not null    -- 파티이미지
, constraint PK_party_image primary key(party_num)
, constraint FK_party_image foreign key(party_num) references party(party_num)
);

------------------------------------

-- 스터디 테이블
create table study
(study_num            nvarchar2(20)                     --  (P.K)  스토리번호  
, fk_useremail         nvarchar2(50)                    -- (F.K) 이메일  
, title               nvarchar2(300)        not null    -- 타이틀                
, study_info          nvarchar2(500)        not null    -- 스터디소개        
, teacher_info        nvarchar2(500)        not null    -- 강사소개          
, regist_date         date      default sysdate         -- 등록일     
, area                nvarchar2(20)         not null    -- 지역      
, lv                  nvarchar2(20)         not null    -- 레벨      
, price               nvarchar2(20)         not null    -- 가격     
, max_cnt             number    default 30  not null    -- 최대인원   
, member_cnt          number    default 0   not null    -- 등록인원   
, status              number(1) default 1               -- 스터디상태 (상태 0:종료, 1:진행중 2:마감임박)
, startday            nvarchar2(20)         not null    -- 시작일  
, lastday             nvarchar2(20)         not null    -- 종료일     
, weekPerDay          number                not null    -- 주당수업일수 
, study_time          nvarchar2(20)         not null    -- 수업시간 
, study_day           nvarchar2(1)          not null    -- 스터디 요일 
, study_week          number(2)             not null    -- 총 주         
, study_holyday       nvarchar2(5)          not null    -- 주말유무     
, constraint PK_study primary key(study_num)
, constraint FK_study foreign key(fk_useremail) references members (useremail)
, constraint CK_study_status check( status in(0,1,2) )
);

-- 스터디 테이블 시퀀스
create sequence seq_study
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


-- 스터디 이미지 테이블 
create table study_image
(seq_img              nvarchar2(20)  not null   --    (P.K) 이미지시퀀스
,study_num            nvarchar2(100) not null    --  (F.K)  스토리번호
,study_img            nvarchar2(100) not null    -- 스터디이미지
,filename             nvarchar2(100) not null    -- 바뀐 스터디이미지 이름
, constraint FK_study_image foreign key(study_num) references study(study_num)
, constraint PK_study_image primary key(seq_img)
);

<<<<<<< HEAD
select *
from study_image;
=======

-- 스터디 qna 테이블 
create table study_qna  
(study_qna_num        NVARCHAR2(20)                 --  (P.K) 스터디qna번호
,fk_study_num   nvarchar2(50)           not null    -- (F.K) 스터디번호
,title          NVARCHAR2(300)          not null    -- 타이틀  
,content        NVARCHAR2(500)          not null    -- 내용
,write_date     date default sysdate                -- 작성일자 
,groupno        number                not null      -- 그룹번호
,depthno        number default 0      not null      -- 순서번호
,fk_seq         number default 0       not null     -- 부모글번호
, constraint PK_study_qna primary key(study_qna_num)
, constraint FK_fk_study_num foreign key(fk_study_num) references study (study_num)
);
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject


<<<<<<< HEAD
-- 이미지 테이블 시퀀스
create sequence seq_study_image
=======
-- 스터디 매칭 테이블
create table study_matching
(study_matnum nvarchar2(50) --  (P.K) 스터디 매칭번호
,fk_useremail        NVARCHAR2(50)          not null    --(F.K) 회원이메일
,fk_study_num   nvarchar2(50)           not null    -- (F.K) 스터디번호
, constraint FK_study_matching_fk_useremail foreign key(fk_useremail) references members (useremail)
, constraint FK_study_matching_fk_study_num foreign key(fk_study_num) references study (study_num)
);


-- 스터디 매칭 테이블 시퀀스
create sequence seq_study
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;


<<<<<<< HEAD


select * 
from study_image;

commit;

select * 
from study;


-- 스터디 qna 테이블 
create table study_qna  
(study_qna_num        NVARCHAR2(20)     --  (P.K) 스터디qna번호
,fk_study_num   nvarchar2(50)           not null    -- (F.K) 스터디번호
,title          NVARCHAR2(300)          not null    -- 타이틀  
,content        NVARCHAR2(500)          not null    -- 내용
,write_date     date default sysdate                -- 작성일자 
,groupno        number                not null      -- 그룹번호
,depthno        number default 0      not null      -- 순서번호
,fk_seq         number default 0       not null     -- 부모글번호
,fk_useremail   NVARCHAR2(50)          not null    --(F.K) 회원이메일
, constraint PK_study_qna primary key(study_qna_num)
, constraint FK_fk_study_num foreign key(fk_study_num) references study (study_num)
, constraint FK_study_qnafk_useremail foreign key(fk_useremail) references members (useremail)
);


=======
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
-- 위시리스트 테이블
create table wishlist
(wishlist_num nvarchar2(50) --  (P.K) 위시리스트 번호
,fk_useremail        NVARCHAR2(50)          not null    --(F.K) 회원이메일
,fk_study_num   nvarchar2(50)           not null    -- (F.K) 스터디번호
, constraint FK_wishlist_fk_useremail foreign key(fk_useremail) references members (useremail)
, constraint FK_wishlist_fk_study_num foreign key(fk_study_num) references study (study_num)
);

-- 위시리스트 테이블 시퀀스
create sequence seq_wishlist
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

<<<<<<< HEAD
-- 결제완료테이블
=======

-- 결제 테이블
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
create table payment_complete
(pay_num        nvarchar2(20)     --  (P.K)  게시판번호
,fk_useremail   nvarchar2(50)          not null    -- (F.K) 유저이메일
,name           nvarchar2(50)          not null    -- 이름  
,phone          nvarchar2(50)          not null    -- 휴대폰
,email          nvarchar2(50)          not null    -- 이메일
,study_name     nvarchar2(50)          not null    -- 강의명
,price          nvarchar2(50)          not null    -- 가격
,couponstatus   number(1) default 0    not null    -- 쿠폰사용여부(0:미사용, 1:사용)
,pay_date       date default sysdate               -- 결제일자
, constraint PK_payment_complete primary key(pay_num)
, constraint FK_payment_fk_useremail foreign key(fk_useremail) references members (useremail)
);

<<<<<<< HEAD
--결제완료 시퀀스 테이블
=======
-- 결제 테이블 시퀀스
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject
create sequence seq_payment_complete
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;





<<<<<<< HEAD
-- 회원 테이블
create table members
( useremail     nvarchar2(50)  -- (P.K) 이메일 
, pwd      varchar2(200) not null-- 비밀번호 
, hp         nvarchar2(200) not null -- 휴대전화
, name          nvarchar2(20) not null -- 이름
, profile       varchar2(300) default 'anonymous.png' -- 섬네일(컬럼명 변경) 
, qualifi       nvarchar2(50)       -- 자격조건 
, route         nvarchar2(50)       -- 알게된 경로
, status        number(1) default 1     -- (C.K) 상태 (회원이라면:1 회원탈퇴:0)
, registerday   date default sysdate -- 가입일자
, fk_auth_num   nvarchar2(20) not null  -- 권한번호
, fk_coupon_num    nvarchar2(20) not null  -- 권한번호
, constraint PK_member_email primary key( useremail )  
, constraint CK_member_status check( status in(0,1) )
, constraint FK_member_fk_auth_num foreign key(fk_auth_num) references authority (auth_num)
, constraint FK_member_fk_coupon_num foreign key(fk_coupon_num) references coupon (coupon_num)
);

select *
from members;

update members set qualifi = '토익';

commit


insert into members(useremail, pwd, hp, name, profile, qualifi, route, status, fk_auth_num, fk_coupon_num)
values('nahakmin@naver.com','qwer1234$','01022452600','김학민','1517293332.jpg','토익950점','인터넷',1,'2','2');




create table study
(study_num            nvarchar2(20)                     --  (P.K)  스토리번호  
, fk_useremail         nvarchar2(50)                    -- (F.K) 이메일  
, title               nvarchar2(300)        not null    -- 타이틀                
, study_info          nvarchar2(2000)        not null    -- 스터디소개        
, teacher_info        nvarchar2(2000)        not null    -- 강사소개          
, regist_date         date      default sysdate         -- 등록일     
, area                nvarchar2(20)         not null    -- 지역      
, lv                  nvarchar2(20)         not null    -- 레벨      
, price               nvarchar2(20)         not null    -- 가격     
, max_cnt             number    default 30  not null    -- 최대인원   
, member_cnt          number    default 0   not null    -- 등록인원   
, studyStatus         number(1) default 1               -- 스터디상태 (상태 0:종료, 1:진행중 2:마감임박)
, startday            nvarchar2(20)         not null    -- 시작일  
, lastday             nvarchar2(20)         not null    -- 종료일     
, study_time          nvarchar2(20)         not null    -- 수업시간 
, study_day           nvarchar2(1)          not null    -- 스터디 요일 
, study_week          number(2)             not null    -- 총 주         
, study_holyday       nvarchar2(5)          not null    -- 주말유무
, title_img           nvarchar2(100)        
, constraint PK_study primary key(study_num)
, constraint FK_study foreign key(fk_useremail) references members (useremail)
, constraint CK_study_status check( status in(0,1,2) )
);


commit;






ALTER TABLE study RENAME COLUMN study TO title_img;

ALTER TABLE study ADD(study NVARCHAR2(100));





commit;
select *
from study;

insert into study(study_num, fk_useremail, title, study_info, teacher_info, area, lv, price, startday, lastday, study_day, study_week, study_holyday, study_time, areacost, max_cnt) 
values(#{study_num}, #{fk_useremail}, #{title}, #{study_info}, #{teacher_info}, #{area}, #{lv}, #{price}, #{startday}, #{lastday}, #{study_day}, #{study_week}, #{study_holyday}, #{study_time}, #{areacost}, #{max_cnt})	



-- 스터디 테이블 시퀀스
create sequence seq_study
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
nocache;

commit;

delete from study_image;
delete from study;

select *
from study;

select *
from members;

select *
from study_image;


-- 스터디 맴버 스터디 이미지 3개 조인 --
select *
from (
select *
from study S left join members M
on S.fk_useremail = M.useremail
)V outer join study_image I
on V.study_num = I.study_num;
-- 스터디 맴버 스터디 이미지 3개 조인 끝 --

select *
from (
select *
from study S join members M
on S.fk_useremail = M.useremail
)V join study_image I
on V.study_num = I.study_num;




=======
>>>>>>> branch 'master' of https://github.com/KIM-HAKMIN/FinalProject

