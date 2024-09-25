USE menudb;
-- DML : 테이블에 삽입 수정 삭제

-- INSERT

INSERT into tbl_menu value (33, '호떡', 5200, 3, 'Y');

select * from tbl_menu where menu_price < 6000;

-- 테이블 설명
describe tbl_menu;

insert into tbl_menu
(orderable_status, menu_name,menu_code,menu_price, category_code)
values
('Y','파인에플플',null,900,4);

select * from tbl_menu;

insert into tbl_menu
values
(null, '홍아이스크림',1600,12,'Y'),
(null, '하아이스크림',1600,12,'Y'),
(null, '코아이스크림',1600,12,'Y');

select * from tbl_menu where category_code = 12;

-- update

select menu_code, category_code from tbl_menu where menu_code = 33;

update tbl_menu set menu_code = 23 where menu_code = 33;

select * from tbl_menu where category_code = 3 ;

insert into tbl_menu values (null, '파인애플탕',1600,12,'Y');

update tbl_menu
set category_code = 6
where menu_code = (
					select cte.menu_code
                    from (
							select menu_code
                            from tbl_menu
                            where menu_name = '파인애플탕'
						) cte
				);
                
select * from tbl_menu where menu_name = '파인애플탕';

select * from tbl_menu;

delete from tbl_menu where menu_code = 37;
select * from tbl_menu;

delete from tbl_menu;

insert into tbl_menu values (15, '파인애플탕',1600,12,'Y');

-- replace : 혹시 값이 존재한다면 덮어쓰기
replace into tbl_menu values (15, '파인애플탕',1800,12,'Y');

replace into tbl_menu values (17, '탕탕',1800,12,'Y');

select * from tbl_menu;



