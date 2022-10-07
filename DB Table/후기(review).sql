-- REVIEW 테이블 생성
create table review (
review_no number primary key,
review_id varchar2(30) references member(member_id),
review_order_no number references payment(payment_order_no),
review_title varchar2(300),
review_content varchar2(4000),
review_writetime date,
review_updatetime date,
review_good number,
review_like number
);
