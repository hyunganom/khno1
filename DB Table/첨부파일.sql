-- 첨부파일 테이블
-- 첨부파일 번호(attachment_no) : 번호, 기본키, 시퀀스 부여
-- 첨부파일명(attachment_name) : 문자(256byte)
-- 첨부파일 유형(attachment_type) : 문자(30byte)
-- 첨부파일 크기(attachment_size) : 번호
-- 첨부파일 업로드 시각(attachment_date) : 날짜

-- ATTACHMENT 테이블 생성
create table attachment(
attachment_no number primary key,
attachment_name varchar2(256),
attachment_type varchar2(30),
attachment_size number,
attachment_date date
);