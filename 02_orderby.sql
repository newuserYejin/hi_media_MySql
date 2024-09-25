-- order by
use menudb;

select menu_code, menu_name,menu_price from tbl_menu order by menu_name;

select menu_code, menu_name,menu_price from tbl_menu order by menu_name desc;

select menu_code, menu_name,menu_price from tbl_menu order by menu_price;

select menu_code, menu_name,menu_price from tbl_menu order by menu_price desc;

select menu_code, menu_name,menu_price from tbl_menu order by menu_price desc, menu_name;

select menu_code,menu_price,menu_code*menu_price as 결과 from tbl_menu order by 결과 desc;

-- field() : 맨 앞에 입력되어 있는 요소가 그 뒤의 요소들의 몇번째에 위치해 있는지 반환
select field('a','b','c','a');

-- orderable_status가 Y인거 먼저 정렬
select menu_name,orderable_status from tbl_menu order by field(orderable_status,'Y','N');

select * from tbl_category;

-- null 존재시 오름차순 정렬이면 null이 맨 위
select * from tbl_category order by ref_category_code;

-- is null 설정 시 오름차순 정렬이라도 null값이 마지막으로 간다.
select * from tbl_category order by ref_category_code is null;


