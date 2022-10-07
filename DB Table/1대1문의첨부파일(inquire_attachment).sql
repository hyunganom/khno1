-- 1:1 문의 첨부파일 테이블

-- inquire_attachment 테이블 생성
create table inquire_attachment (
inquire_no number references inquire(inquire_no) on delete cascade,
inquire_attachment_no number references attachment(attachment_no) on delete cascade
);