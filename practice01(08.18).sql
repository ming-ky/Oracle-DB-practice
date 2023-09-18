--문제1
select employee_id
       ,first_name
       ,last_name
       ,hire_date
from employees;

--문제2
select employee_id
       ,first_name
       ,last_name
       ,hire_date
from employees
order by employee_id asc;

--문제3
select employee_id
       ,first_name
       ,last_name
       ,hire_date
from employees
order by hire_date desc, employee_id asc;

--문제4
select first_name||' '||last_name "성 명"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees;

--문제5
select first_name||' '||last_name "성 명"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees
order by hire_date desc;

--문제6
select first_name||' '||last_name "성 명"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees
order by department_id asc;

--문제7
select first_name||' '||last_name "성 명"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
from employees
order by department_id asc, hire_date desc;

--문제8
select first_name||' '||last_name "성 명"
       ,phone_number
       ,hire_date
       ,salary
       ,department_id
       ,nvl(department_id,0)
from employees
order by department_id asc, hire_date desc;

--문제9
select first_name||' '||last_name "이름"
       ,salary "연봉"
       ,phone_number "전화-번호"
       ,hire_date "입사일"
from employees
order by hire_date asc;

--문제10
select last_name
       ,salary
from employees
where salary>=12000;

--문제11
select last_name
       ,salary
from employees
where salary>=12000
order by salary desc;

--문제12
select last_name
       ,salary
       ,hire_date
from employees
where salary>=12000
order by salary desc, hire_date asc;

--문제13
select upper(first_name)
       ,to_char(hire_date,'DD-MM-YYYY')
from employees
where hire_date>='07/01/01';

--문제14
select employee_id
       ,last_name
       ,department_id
from employees
where employee_id = 100;

--문제15
select employee_id
       ,last_name
       ,department_id
from employees
where employee_id >=100 
and employee_id < 200
order by employee_id asc;

--문제16
select last_name
       ,salary
from employees
where salary < 5000 or salary > 12000;

--문제17
select last_name
       ,to_char(hire_date,'YYYY-MM-DD')
from employees
where hire_date between '07/01/01' and '07/12/31'
order by hire_date desc;

--문제18
select *
from employees
where salary in (2500, 3500, 7000);

--문제19
select *
from employees
where salary != 2500 
and salary != 3500 
and salary != 7000;

--문제20
select *
from employees
where salary != 2500 
and salary != 3500 
and salary != 7000 
and job_id in ('SA_REP'); 

--문제21
select *
from employees
where salary != 2500 
and salary != 3500 
and salary != 7000 
and job_id in ('SA_REP' , 'ST_CLERK'); 

--문제22 
select last_name
       ,department_id
from employees
where department_id = 20 or department_id = 50
order by last_name asc;

--문제23
select last_name
       ,salary
from employees
where department_id in (20, 50) 
and salary between 5000 and 12000;

--문제24
select first_name
       ,employee_id
from employees
where last_name like '%a%' or last_name like '%e%';

--문제25
select first_name
       ,employee_id
       ,salary
from employees
where last_name like 'J%n';

--문제26 
select first_name
       ,employee_id
       ,salary
       ,phone_number
from employees
where first_name like 'J%n' 
and first_name like '____';

--문제27
select last_name
       ,salary
       ,commission_pct
from employees
where commission_pct is not null
order by salary desc, commission_pct desc;

--문제28
select last_name
       ,job_id
from employees
where manager_id is not null;

--문제29
select employee_id "사번"
       ,first_name "이름"
       ,to_char(salary, '999,999') "연봉"
       ,to_char(salary*10, '999,999') "10년연봉"
from employees
order by salary desc;

--문제30
select employee_id "사번"
       ,first_name "이름"
       ,salary "연봉"
       ,to_char(salary/12, '999,999') "월급(연봉/12)"
       ,to_char(salary/12*0.033, '999,999') "세금(연봉/12*3.3%)"
       ,to_char((salary/12)-(salary/12*0.033), '999,999')"실수령액(월급-세금)"
from employees;

--문제31
select job_title "업무이름"
       ,max_salary "최고월급"
from jobs
order by max_salary desc;

--문제32
select first_name
       ,manager_id
       ,commission_pct
       ,salary
from employees
where (manager_id is not null) 
and (commission_pct is null) 
and (salary > 3000);

--문제 33
select job_title "업무의 이름"
       ,max_salary "최고월급(max_salary)"
from jobs
where max_salary >= 10000
order by max_salary desc;

--문제34
select first_name "이름"
       ,salary/12 "월급"
       ,nvl(commission_pct,0) "커미션퍼센트"
from employees
where salary >= 10000 and salary <14000
order by salary desc;

--문제35
select first_name
       ,salary
       ,to_char(hire_date, 'YYYY-MM-DD HH12:MI:SS')
       ,department_id
from employees
where department_id in (10, 90, 100);

--문제36
select first_name
       ,salary
from employees
where first_name like '%S%' or first_name like '%s%';

--문제37
select department_name
from departments
order by length(department_name) desc;

--문제38
select upper(country_name)
from countries
order by country_name asc;

--문제39
select first_name
       ,salary
       ,replace(phone_number, '.', '-') 
       ,hire_date
from employees
where hire_date < '03/12/31';