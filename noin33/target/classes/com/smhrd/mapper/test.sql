drop table welfare_worker;
drop table senior;
drop table emergency;
drop table request;
--보호자 테이블 --
create table guardian(email varchar(100),
name varchar(30) not null,
phone varchar(50) not null,
adress varchar(50) not null,
seperator varchar(20) not null,
constraint guard_email primary key(email))
--복지사 테이블 --
create table welfare_worker(email varchar(100),
name varchar(30) not null,
phone varchar(50) not null,
seperator varchar(20) not null, 
constraint wel_email primary key(email))
-- 노인 테이블 --
create table senior(idx int not null auto_increment,
seperator varchar(20) not null,
name varchar(50) not null,
age int not null,
regi_number varchar(50) not null,
adress varchar(100) not null,
phone varchar(50) not null,
uniqueness varchar(100),
aplication_date datetime default now(),
primary key(idx))
--로그인 테이블 필요--
--각테이블의 seperator 참조해서--

--위험 상황 테이블--
create table emergency(emergency_id int not null auto_increment,
idx int not null,
occurrence_date datetime default now(),
situation_info varchar(100) not null,
classification varchar(100) not null,
email varchar(100) not null,
primary key(emergency_id),
constraint emer_id foreign key(idx) references senior(idx),
constraint emer_email foreign key(email) references welfare_worker(email))
--메신저 테이블--
create table massenger(idx int not null auto_increment,
sender varchar(50) not null,
recipient varchar(50) not null,
contents varchar(4000) not null,
send_date datetime default now(),
primary key(idx))

select * from senior;
select * from welfare_worker;
select * from request;
--노인 신청 테이블--
create table request(idx int not null auto_increment,
seperator varchar(20) not null,
name varchar(50) not null,
age int not null,
regi_number varchar(50) not null,
adress varchar(100) not null,
phone varchar(50) not null,
uniqueness varchar(100),
aplication_date datetime default now(),
primary key(idx));

select * from request;

--신청테이블에서 신청등록하기.
insert into request(seperator,name,age,regi_number,adress,phone,uniqueness) values(
'1','김이겸',69,'370111-1552011','광주 동구 산수동 동산로얄 아파트 101동 101호','010-1111-2222','때때로 가슴을 부여잡고 아픔을 호소함.'
);

-- 신청테이블 정보 보여주기.
select * from request;

--해당 idx를 가진 행 보여주기.
select * from request where idx = 2;

delete from request where idx = 5;

--복지사가 관리승인을 할 시 , 신청 테이블에서 노인 테이블로 복사해주고 해당 번호를 가진 테이블은 지우기.
INSERT INTO senior SELECT * FROM request WHERE idx = 2;
delete from request where idx=2;

-- 복지사 테이블 보여주기--
select * from welfare_worker;

commit;



