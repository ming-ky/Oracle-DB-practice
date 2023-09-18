drop table person;
drop sequence seq_person_id;

--person 테이블 생성
create table person(
    person_id number(5),
    name varchar2(30),
    hp varchar2(20),
    company varchar2(20),
    primary key (person_id)
);

--person 테이블에 시퀀스 생성
create sequence seq_person_id
increment by 1 
start with 1 
nocache;

--person 테이블 insert
insert into person
values (seq_person_id.nextval, '이효리', '010-2222-3333', '031-2323-4441');

insert into person
values (seq_person_id.nextval, '정우성', '010-2323-3333', '02-5555-5555');

insert into person
values (seq_person_id.nextval, '유재석', '010-4545-6767', '02-5555-5555');

insert into person
values (seq_person_id.nextval, '이정재', '010-9999-9999', '02-8888-8888');


select * 
from person;

select person_id
       ,name
       ,hp
       ,company
from person;