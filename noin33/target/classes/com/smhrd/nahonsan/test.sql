
--보호자 테이블 --
create table guardian(email varchar(100),
password varchar(50) not null,
name varchar(30) not null,
phone varchar(50) not null,
adress varchar(50) not null,
constraint guard_email primary key(email))
--복지사 테이블 --
create table welfare_worker(email varchar(100),
password varchar(50) not null,
name varchar(30) not null,
phone varchar(50) not null,
constraint wel_email primary key(email))
-- 노인 테이블 --
create table senior(ID varchar(100),
name varchar(50) not null,
age int not null,
adress varchar(100) not null,
phone varchar(50) not null,
uniqueness varchar(100),
aplication_date datetime default now(),
constraint seni_id primary key(ID))
--위험 상황 테이블--
create table emergency(emergency_id int not null auto_increment,
id varchar(100) not null,
occurrence_date datetime default now(),
situation_info varchar(100) not null,
classification varchar(100) not null,
email varchar(100) not null,
primary key(emergency_id),
constraint emer_id foreign key(id) references senior(id),
constraint emer_email foreign key(email) references welfare_worker(email))
--메신저 테이블--
create table massenger(idx int not null auto_increment,
sender varchar(50) not null,
recipient varchar(50) not null,
contents varchar(4000) not null,
send_date datetime default now(),
primary key(idx))

select * from senior;




