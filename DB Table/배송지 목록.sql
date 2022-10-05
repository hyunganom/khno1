-- 배송지 목록 테이블
-- 상품이 배송될 주소에 대한 정보

-- 구성요소
-- 배송지 번호(address_no) 배송될 곳 각각의 주소 넘버링 위함, 시퀀스로 줘야하나?
-- 회원 아이디(address_id) 회원테이블의 member_id 참조?
-- 배송지 우편번호(address_post) 숫자5~6자리   
-- 배송지 기본주소(address_base) 한글 10자 이내
-- 배송지 상세주소(address_detail) 한글 10자 이내
   
create table address (
address_no number not null,
address_id varchar2(20) not null references member(member_id),
address_post varchar2(6) not null,
address_base varchar(30) not null,
address_detail varchar(30) not null
); 