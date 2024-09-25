use menudb;

-- group by  : 그룹화 하기
-- having :  그룹에 대한 조건

select category_code 
from tbl_menu 
group by category_code
having category_code < 10;

select category_code as '카테고리 코드', count(*) as '포함된 수' 
from tbl_menu 
group by category_code
having category_code < 10;

select category_code, sum(menu_price) as '그룹별 합계', avg(menu_price) as '그룹별 금액 평균'
from tbl_menu 
group by category_code;

select menu_price, category_code
from tbl_menu 
group by menu_price, category_code;

select * from tbl_menu order by category_code;

select category_code from tbl_menu group by category_code having (category_code >=5 && category_code <9);

-- 5포함, 8포함
select category_code from tbl_menu group by category_code having (category_code not between 5 and 8);

-- with rollup (그룹별 총합 추가)
select category_code, sum(menu_price) from tbl_menu group by category_code with rollup;

select category_code, avg(menu_price) from tbl_menu group by category_code with rollup;

select menu_price, count(*) from tbl_menu group by menu_price with rollup;

-- rollup 을 통해 부분 합계와 총합계를 구할 수 있다.
select menu_price, category_code, sum(menu_price) from tbl_menu group by menu_price, category_code with rollup;


