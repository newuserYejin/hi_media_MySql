-- DDL
-- 스키마 정의 및 수정

-- create
-- IF NOT EXISTS

-- CREATE TABLE 

-- [NOT NULL] [DEFUALT VALUE] [AUTO INCREAMENT]

create table if not exists tb1(
	PK int primary key,
    fk int,
    col1 varchar(255),
    check(col1 in ('Y','N'))		-- 제약조건 확인 명시자 check 
) engine=InnoDB;

-- engine=InnoDB
-- 해당 테이블에 InnoDB 라는 스터리지 엔진 생성

insert into tb1 values(1,10,'Y');

select * from tb1;


create table if not exists tb2(
	PK int auto_increment primary key,
    fk int,
    col1 varchar(255),
    check(col1 in ('Y','N'))		-- 제약조건 확인 명시자 check 
) engine=InnoDB;

-- 테이블 삭제
drop table tb2;

describe tb2;

-- auto increament

insert into tb2 values(null,10,'Y');
insert into tb2 values(null,20,'Y');

select * from tb2;


-- alter

-- 열 추가

ALTER TABLE tb2
ADD col2 int not null;

describe tb2;

alter table tb2
drop column col2;

alter table tb2
change column fk change_fk int not null;

alter table tb2
modify pk int;

describe tb2;

alter table tb2
drop primary key;

create table if not exists tb3(
	PK int auto_increment primary key,
    fk int,
    col1 varchar(255),
    check(col1 in ('Y','N'))		-- 제약조건 확인 명시자 check 
) engine=InnoDB;

drop table tb3 cascade;












