
-- set : 두개 이상의 select문 결과 집합을 결합한다.
-- 주의사항 : 양쪽의 컬럼이 일치해야한다.

-- union: 중복된 결과 제거후 결합 결과 반환

select * from tbl_menu where category_code = 10
union
select * from tbl_menu where menu_price < 9000;

-- union all: 중복된 결과 제거하지 않고 결합 결과 반환

select * from tbl_menu where category_code = 10
union all
select * from tbl_menu where menu_price > 7000 order by menu_name;


-- 중복 내용만 출력
-- interset : 두 쿼리문의 공통된 결과만 반환
-- inner join 또는 in 연산자를 이용하여 interset 대체 가능

select menu_name
from tbl_menu a inner join (
						select *
                        from tbl_menu
                        where menu_price <9000
					) b on (a.menu_code = b.menu_code)
where a.category_code = 10;

select *
from tbl_menu
where category_code = 10
	  and
      menu_code in (
						select menu_code
                        from tbl_menu
                        where menu_price < 9000
                    );

-- 차집합
select *
from tbl_menu a
	 left join (
					select *
                    from tbl_menu
                    where menu_price <9000
				) b
                on a.menu_code = b.menu_code
where a.category_code = 10 and b.menu_code is null;






