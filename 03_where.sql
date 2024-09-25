use menudb;

-- where (조건문)

select * from tbl_menu where (orderable_status ='Y' && menu_price >= 7000) order by menu_price desc;

select * from tbl_menu order by menu_price desc;

select menu_name,menu_price,orderable_status from tbl_menu where (menu_price = 13000);

-- 부정의 의미 : != , <>
select menu_code,menu_name,orderable_status from tbl_menu where (orderable_status != 'Y');

select * from tbl_menu where (menu_price >= 10000 and menu_price<20000);

select * from tbl_menu where (orderable_status ='Y' || category_code = 10) order by category_code;

-- 10000초과 20000 미만이 아닌 것 조회
select* from tbl_menu where !(menu_price between 10000 and 20000);

select* from tbl_menu where (menu_price not between 10000 and 20000);

select menu_name, menu_price from tbl_menu where (menu_name like '_마늘%');

select menu_name, menu_price from tbl_menu where (menu_name like '%마늘%');

select menu_name, menu_price from tbl_menu where (menu_name like '%마늘_');

select * from tbl_menu where (category_code =10 && menu_name like '%갈치%');

select menu_name, category_code from tbl_menu where (category_code in (4,5,6));

select * from tbl_category where ( ref_category_code is not null);



