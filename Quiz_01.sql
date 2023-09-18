--����1
select employee_id
       ,first_name
       ,last_name
       ,hire_date
from employees;

--����2
select employee_id
       ,first_name
       ,last_name
       ,hire_date
from employees
order by employee_id asc;

--����3
select employee_id
       ,first_name
       ,last_name
       ,hire_date
from employees
order by hire_date desc, employee_id asc;

--����4
select first_name||' '||last_name "�� ��"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees;

--����5
select first_name||' '||last_name "�� ��"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees
order by hire_date desc;

--����6
select first_name||' '||last_name "�� ��"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees
order by department_id asc;

--����7
select first_name||' '||last_name "�� ��"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees
order by department_id asc, hire_date desc;

--����8
select first_name||' '||last_name "�� ��"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
       ,nvl(department_id,0)
from employees
order by department_id asc, hire_date desc;

--����9
select first_name||' '||last_name "�̸�"
       ,salary "����"
       ,phone_number "��ȭ-��ȣ"
       ,hire_date "�Ի���"
from employees
order by hire_date asc;

--����10
select last_name
       ,salary
from employees
where salary>=12000;

--����11
select last_name
       ,salary
from employees
where salary>=12000
order by salary desc;

--����12
select last_name
       ,salary
       ,hire_date
from employees
where salary>=12000
order by salary desc, hire_date asc;

--����13
select upper(first_name)
       ,to_char(hire_date,'DD-MM-YYYY')
from employees
where hire_date>='07/01/01';

--����14
select employee_id
       ,last_name
       ,department_id
from employees
where employee_id = 100;

--����15
select employee_id
       ,last_name
       ,department_id
from employees
where employee_id >=100 
and employee_id < 200
order by employee_id asc;

--����16
select last_name
       ,salary
from employees
where salary < 5000 or salary > 12000;

--����17
select last_name
       ,to_char(hire_date,'YYYY-MM-DD')
from employees
where hire_date between '07/01/01' and '07/12/31'
order by hire_date desc;

--����18
select *
from employees
where salary in (2500, 3500, 7000);

--����19
select *
from employees
where salary != 2500 
and salary != 3500 
and salary != 7000;

--����20
select *
from employees
where salary != 2500 
and salary != 3500 
and salary != 7000 
and job_id in ('SA_REP'); 

--����21
select *
from employees
where salary != 2500 
and salary != 3500 
and salary != 7000 
and job_id in ('SA_REP' , 'ST_CLERK'); 

--����22 
select last_name
       ,department_id
from employees
where department_id = 20 or department_id = 50
order by last_name asc;

--����23
select last_name
       ,salary
from employees
where department_id in (20, 50) 
and salary between 5000 and 12000;

--����24
select first_name
       ,employee_id
from employees
where last_name like '%a%' or last_name like '%e%';

--����25
select first_name
       ,employee_id
       ,salary
from employees
where last_name like 'J%n';

--����26 
select first_name
       ,employee_id
       ,salary
       ,phone_number
from employees
where first_name like 'J%n' 
and first_name like '____';

--����27
select last_name
       ,salary
       ,commission_pct
from employees
where commission_pct is not null
order by salary desc, commission_pct desc;

--����28
select last_name
       ,job_id
from employees
where manager_id is not null;

--����29
select employee_id "���"
       ,first_name "�̸�"
       ,to_char(salary, '999,999') "����"
       ,to_char(salary*10, '999,999') "10�⿬��"
from employees
order by salary desc;

--����30
select employee_id "���"
       ,first_name "�̸�"
       ,salary "����"
       ,to_char(salary/12, '999,999') "����(����/12)"
       ,to_char(salary/12*0.033, '999,999') "����(����/12*3.3%)"
       ,to_char((salary/12)-(salary/12*0.033), '999,999')"�Ǽ��ɾ�(����-����)"
from employees;

--����31
select job_title "�����̸�"
       ,max_salary "�ְ����"
from jobs
order by max_salary desc;

--����32
select first_name
       ,manager_id
       ,commission_pct
       ,salary
from employees
where (manager_id is not null) 
and (commission_pct is null) 
and (salary > 3000);

--���� 33
select job_title "������ �̸�"
       ,max_salary "�ְ����(max_salary)"
from jobs
where max_salary >= 10000
order by max_salary desc;

--����34
select first_name "�̸�"
       ,salary/12 "����"
       ,nvl(commission_pct,0) "Ŀ�̼��ۼ�Ʈ"
from employees
where salary >= 10000 and salary <14000
order by salary desc;

--����35
select first_name
       ,salary
       ,to_char(hire_date, 'YYYY-MM-DD HH12:MI:SS')
       ,department_id
from employees
where department_id in (10, 90, 100);

--����36
select first_name
       ,salary
from employees
where first_name like '%S%' or first_name like '%s%';

--����37
select department_name
from departments
order by length(department_name) desc;

--����38
select upper(country_name)
from countries
order by country_name asc;

--����39
select first_name
       ,salary
       ,replace(phone_number, '.', '-') 
       ,hire_date
from employees
where hire_date < '03/12/31';
