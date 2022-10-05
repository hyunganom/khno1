-- 쿠폰리스트 테이블
-- 쿠폰발행 현황 정보

-- 구성요소
-- 쿠폰 번호(coupon_list_no) 쿠폰 테이블의 쿠폰번호를 참조?
-- 보유자 아이디(coupon_list_member_id)  회원테이블의 member_id 참조?

create table coupon_list (
coupon_list_no number references coupon(coupon_no),
coupon_list_member_id varchar2(20) not null references member_id 
);