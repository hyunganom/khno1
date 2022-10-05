-- BASKET 테이블 생성
create table basket (
basket_id varchar2(20) references member(member_id),
basket_product_no number references product(product_no),
basket_count number,
basket_address date,
primary key(basket_id, basket_product_no)
);