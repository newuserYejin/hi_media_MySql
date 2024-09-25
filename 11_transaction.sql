-- transaction
-- 데이터베이스 수행 작업 단위

-- 1: true, 0: false
set autocommit = 0;

start transaction;

select * from tbl_menu;

insert into tbl_menu values(null, '해장국',9000,2,'Y');
update tbl_menu set menu_name = '선지해장국' where menu_code = 39;

rollback;

insert into tbl_menu values(null, '해장국',9000,2,'Y');

-- autocommit을 0으로 설정하여 자동 커밋을 껏기 째문에 저장하기 위해서는 commit이 필요하다.
commit;

rollback;

