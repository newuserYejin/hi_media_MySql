-- SELECT
-- 날려먹고 나면 다시 작성해서 실행하기 use menudb;

select menu_name from tbl_menu;
select menu_code, menu_price from tbl_menu;

select now();

-- concat() : 합치기
select concat('조','문자열','호이');

-- as 별칭
select concat('조','문자열','호이') as 별칭;

select concat('조','문자열','호이') as '별 별 별';


