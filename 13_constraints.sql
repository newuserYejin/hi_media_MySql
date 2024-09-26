-- constraints (제약조건)

drop table if exists user_notnull;
create table if not exists user_notnull(
	user_no int not null unique,
    user_id varchar(30) not null,
    user_pwd varchar(40) not null,
    user_name varchar(30) not null,
    gender varchar(3),
    phone varchar(30) not null,
    email varchar(50),
    unique(phone, email)
) engine = InnoDB;

describe user_notnull;

insert into user_notnull
values (1,'user01','pass01','호','남','010-1111-1111','1111@gmail.com'),
		(2,'user02','pass02','호후','남','010-1111-1112','2222@gmail.com'),
		(3,'user03','pass03','호후','여','010-1111-1113','3333@gmail.com');

select * from user_notnull;

drop table if exists user_pk;
create table if not exists user_pk(
	-- user_no int primary key,
    user_no int,
    user_id varchar(30) not null,
    user_pwd varchar(40) not null,
    user_name varchar(30) not null,
    gender varchar(3),
    phone varchar(30) not null,
    email varchar(50),
    unique(phone, email)
) engine = InnoDB;

describe user_pk;

drop table if exists user_pk;
create table if not exists user_pk(
	user_no int primary key,
    -- user_no int,
    user_id varchar(30) not null,
    user_pwd varchar(40) not null,
    user_name varchar(30) not null,
    gender varchar(3),
    phone varchar(30) not null,
    email varchar(50),
    unique(phone, email)
) engine = InnoDB;

describe user_pk;

-- foreign key 외래키

drop table if exists user_grade;
create table if not exists user_grade(
	grade_code int primary key,
    grade_name varchar(30) not null
) engine = InnoDB;

insert into user_grade
values
(10,'일반회원'),
(20,'우수회원'),
(30,'특별회원');

select * from user_grade;

drop table if exists user_foreignkey1;
create table if not exists user_foreignkey1(
	user_no int primary key,
    -- user_no int,
    user_id varchar(30) not null,
    user_pwd varchar(40) not null,
    user_name varchar(30) not null,
    gender varchar(3),
    phone varchar(30) not null,
    email varchar(50),
    grade_no int,
    foreign key (grade_no) references user_grade(grade_code),
    unique(phone, email)
) engine = InnoDB;

insert into user_foreignkey1
values (1,'user01','pass01','호','남','010-1111-1111','1111@gmail.com',10),
		(2,'user02','pass02','호후','남','010-1111-1112','2222@gmail.com',20),
		(3,'user03','pass03','호후','여','010-1111-1113','3333@gmail.com',30);

describe user_foreignkey1;

select * from user_foreignkey1;











