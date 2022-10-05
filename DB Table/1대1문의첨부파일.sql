-- 1:1 문의 첨부파일 테이블
-- 문의글 원본 번호(inquire_no) : 번호, 외래키, 문의글 테이블(inquire)의 문의글 원본 번호(inquire_no) 참조
-- 문의글 첨부파일 번호(inquire_attachment_no) : 번호, 외래키, 첨부파일 테이블(attachment)의 첨부파일 번호(attachment_no) 참조

-- INQUIRE_ATTACHMENT 테이블 생성
create table inquire_attachment (
inquire_no number references inquire(inquire_no),
inquire_id varchar2(30) references member(member_id)
);