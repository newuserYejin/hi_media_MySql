use menudb;

-- distinct

select distinct category_code from tbl_menu;

select category_code, orderable_status from tbl_menu;

select distinct category_code, orderable_status from tbl_menu;
