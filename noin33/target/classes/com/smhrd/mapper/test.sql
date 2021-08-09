drop table welfare_worker;
drop table senior;
drop table emergency;
drop table request;
drop table massenger;

--보호자 테이블 --
create table guardian(
email varchar(100),
name varchar(30) not null,
phone varchar(50) not null,
address varchar(50),
seperator varchar(10) not null,   
constraint guard_email primary key(email))

--복지사 테이블 --
create table welfare_worker(
email varchar(100),
name varchar(30) not null,
phone varchar(50) not null,
seperator varchar(10) not null,
constraint wel_email primary key(email))

--시연영상용 계정들 생성하기--
--현진--
insert into member(id, password,seperator)
    values('anansi7543@gmail.com', 123,3);
insert into welfare_worker(email, name, phone,seperator)
    values('anansi7543@gmail.com', '안현진', '010-1234-4321',3);
--성빈--
insert into member(id, password,seperator)
    values('sbjin620@naver.com', 123,3);
insert into welfare_worker(email, name, phone,seperator)
    values('sbjin620@naver.com', '진성빈', '010-1234-4321',3);
--태희--
insert into member(id, password,seperator)
    values('tehe127@naver.com', 123,3);
insert into welfare_worker(email, name, phone,seperator)
    values('tehe127@naver.com', '정태희', '010-1234-4321',3);
--인겸--
insert into member(id, password,seperator)
    values('twitch@kakao.com', 123,3);
insert into welfare_worker(email, name, phone,seperator)
    values('twitch@kakao.com', '김인겸', '010-1234-4321',3);
--재웅--
insert into member(id, password,seperator)
    values('wodnd1593@naver.com', 123,3);
insert into welfare_worker(email, name, phone,seperator)
    values('wodnd1593@naver.com', '최재웅', '010-1234-4321',3);
    
--여기서부터 한줄씩 추가하기--
alter table welfare_worker add intro varchar(100);
alter table welfare_worker add certi varchar(100);
update welfare_worker set  intro= '내 가족을 만나는 것처럼 성실하고 꼼꼼하게 보살펴 드립니다' where name='최재웅';
update welfare_worker set  intro= '사랑을 채웁니다. 항상 건강하고 행복하세요 :)' where name='김인겸';
update welfare_worker set  intro= '사랑은 나눌수록 커집니다' where name='진성빈';
update welfare_worker set  intro= '따뜻한 마음으로 정성을 다하겠습니다' where name='정태희';
update welfare_worker set  intro= '최고의 선물은 함께하는 시간입니다. 지금이 바로 안부전화할 시간입니다' where name='안현진';

update welfare_worker set certi= '사회복지사 2급 / 물리치료사' where name ='최재웅';
update welfare_worker set certi= '간호사 / 요양보호사  / 사회복지사 2급' where name ='김인겸';
update welfare_worker set certi= '요양보호사 / 물리치료사' where name ='진성빈';
update welfare_worker set certi= '요양보호사 / 작업치료사' where name ='정태희';
update welfare_worker set certi= '간호사 / 사회복지사 2급 / 물리치료사' where name ='안현진';

select * from welfare_worker;

-- 노인 테이블 --
create table senior(
idx int not null auto_increment,
seperator varchar(10) not null,   
name varchar(50) not null,
age int not null,
regi_number varchar(50) not null, 
address varchar(100) not null,
phone varchar(50) not null,
uniqueness varchar(100),
application_date datetime default now(),
constraint seni_id primary key(idx))

--회원 테이블 필요--
create table member(
id varchar(30) primary key,
password varchar(20) not null,
seperator varchar(10) not null
)
--각테이블의 seperator 참조해서--

--위험 상황 테이블--
create table emergency(
emergency_id int not null auto_increment,
idx int not null,
occurrence_date datetime default now(),
situation_info varchar(100) not null,
classification varchar(100) not null,
email varchar(100) not null,
primary key(emergency_id),
constraint emer_id foreign key(idx) references senior(idx),
constraint emer_email foreign key(email) references welfare_worker(email))
--메신저 테이블--
create table massenger(
idx int not null auto_increment,
sender varchar(50) not null,
recipient varchar(50) not null,
contents varchar(4000) not null,
send_date datetime default now(),
primary key(idx))


--노인 신청 테이블--
create table request(
idx int not null auto_increment,
seperator varchar(20) not null,
name varchar(50) not null,
age int not null,
regi_number varchar(50) not null,
address varchar(100) not null,
phone varchar(50) not null,
uniqueness varchar(100),
application_date datetime default now(),
primary key(idx));

select * from request;
alter table request CHANGE adress address varchar(100) not null;

--신청테이블에서 신청등록하기.
insert into request(seperator,name,age,regi_number,adress,phone,uniqueness) values(
'1','김이겸',69,'370111-1552011','광주 동구 산수동 동산로얄 아파트 101동 101호','010-1111-2222','때때로 가슴을 부여잡고 아픔을 호소함.'
);

-- 신청테이블 정보 보여주기.
select * from request;
select * from senior;

--해당 idx를 가진 행 보여주기.
select * from request where idx = 2;

delete from request where idx = 7;

--복지사가 관리승인을 할 시 , 신청 테이블에서 노인 테이블로 복사해주고 해당 번호를 가진 테이블은 지우기.
INSERT INTO senior SELECT * FROM request WHERE idx = 2;
delete from request where idx=2;

-- 복지사 테이블 보여주기--
select * from welfare_worker;

commit;


select * from member;

-- 노인의 호출 서비스 보여주는 테이블--
