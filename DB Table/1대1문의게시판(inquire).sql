-- 1대1문의게시판
-- 1:1 문의게시판(inquire) table
-- inquire_no(글 번호) : 기본키, 시퀀스로 부여
-- inquire_id(작성자) : 문자(20 byte), 외래키, 회원(member) 테이블의 회원 아이디(member_id) 참조, 회원 탈퇴시 작성자를 null로
-- inquire_title(제목) : 문자(300 byte), , 반드시 입력
-- inquire_content(내용) : 문자(4000 byte), 반드시 입력
-- inquire_writedate(작성일) : 날짜, 기본값을 sysdate로
-- inquire_updatedate(수정일) : 날짜

-- inquire 테이블 생성
create table inquire(
inquire_no number primary key,
inquire_id varchar2(20) references member(member_id) on delete set null,
inquire_title varchar2(300) not null,
inquire_content varchar2(4000) not null,
inquire_writedate date default sysdate,
inquire_updatedate date
)

-- inquire_seq 시퀀스 생성
create sequence inquire_seq;
