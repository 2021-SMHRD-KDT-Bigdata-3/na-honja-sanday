drop table welfare_worker;
drop table senior;
drop table emergency;
drop table request;

--보호자 테이블 --
create table guardian(
email varchar(100),
name varchar(30) not null,
phone varchar(50) not null,
address varchar(50) not null,
seperator varchar(10) not null,   --구분자(2)--
constraint guard_email primary key(email))

--복지사 테이블 --
create table welfare_worker(
email varchar(100),
name varchar(30) not null,
phone varchar(50) not null,
seperator varchar(10) not null,   --구분자(3)--
constraint wel_email primary key(email))

-- 노인 테이블 --
create table senior(
idx int not null auto_increment,
seperator varchar(10) not null,   --구분자 (1)--
name varchar(50) not null,
age int not null,
regi_number varchar(50) not null, --주민번호--
address varchar(100) not null,
phone varchar(50) not null,
uniqueness varchar(100),
application_date datetime default now(),
constraint seni_id primary key(ID))
primary key(idx))


--회원 테이블 필요--
create table member(
id varchar(30) not null,
password varchar(20) not null,
seperator varchar(10) not null,
constraint mem_id primary key(id),


constraint 
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

이따가 password삭제하고 senior테이블 수정되서 오면, login테이블 추가하고, loginVO 생성


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
insert into request values(null,'김대웅',75,'광주광역시 동구 학동 삼익세라믹 103동 103호', '010-4690-8392','허리가 자주 아프십니다. 잘부탁드려요',
now());

-- 신청테이블 정보 보여주기.
select * from request;

--해당 idx를 가진 행 보여주기.
select * from request where idx = 2;



--복지사가 관리승인을 할 시 , 신청 테이블에서 노인 테이블로 복사해주고 해당 번호를 가진 테이블은 지우기.
INSERT INTO senior SELECT * FROM request WHERE idx = 2;
delete from request where idx=2;

-- 복지사 테이블 보여주기--
select * from welfare_worker;


commit;



