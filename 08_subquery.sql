use menudb;

select category_code from tbl_menu where menu_name = '민트미역국';

select * 
from tbl_menu
where category_code = (
	select category_code 
    from tbl_menu
    where menu_name = '민트미역국'
);

-- subquery: 쿼리문 내에 실행되는 쿼리문
-- from에 사용하는 쿼리 : 파생 테이블, 파생 테이블은 별칭을 필수로 가지고 있어야한다.

select max(count)
from (
		select count(*) as 'count'
        from  tbl_menu
        group by category_code 
    ) as count_menu;
 
 
 select *
 from tbl_menu
 where category_code = (
	select max(menu_count)
    from (
		select count(*) as menu_count
        from  tbl_menu
        group by category_code 
    ) as count_menu
 );
 
 -- 상관 서브 쿼리 : main 쿼리의 결과가 서브쿼리에 영향을 주는 경우
 
 -- 카테고리별로 각 카테고리의 평균 가격보다 값이 높은 메뉴 출력
 select *
 from tbl_menu a
 where menu_price > (
	select avg(menu_price)
    from tbl_menu
    where category_code = a.category_code
 )
 order by category_code;
 
select avg(menu_price)
from tbl_menu
where category_code=10;

-- CTE(common Table Expression)
-- frome 에서만 사용 
 
 -- 가상테이블 만들기
 
 with menucte as(
	select me.menu_name, me.category_code, ca.category_name
	from tbl_menu me join tbl_category ca on me.category_code = ca.category_code
 )
 
 select * from menucte order by category_code;
 


 
 
 
 
 
 
 
 
 

