--1.1

select concat ('Oracle ', 'Internet')||' Academy' as "The Best Class" from dual;



--1.2

select substr ('Oracle Internet Academy', 13,3) as "The Net" from dual;



--1.3

select length ('Oracle Internet Academy') length from dual;



--1.4

select instr ('Oracle Internet Academy','I') as "position" from dual;



--1.5

select LPAD('Oracle',10,'*')||LPAD('Internet',12,'*')||RPAD(LPAD('Academy',11,'*'),15,'*') from dual;



--1.6

select RPAD('Oracle',9,'$')||RPAD('Internet',11,'&')||('Academy') from dual;



--1.7

select replace ('Oracle Internet Academy','Internet','2013-2014') as "The Best Class" from dual;



--1.8

SELECT order_date, LPAD(ORDER_TOTAL,7,'$') as "total" from f_orders;



--1.9

select upper(first_name) ||' '|| upper(last_name) ||' '|| upper(address)||' '|| upper(city) ||', '|| upper(state)||' '||zip as "ADDRESS" from f_customers where id = 456;



--1.10

SELECT SUBSTR(first_name, 1,1) || last_name | last_name as "Name", salary, department_ as "Name", salary, department_id from employees where department_id = 20;

SELECT SUBSTR(first_name, 1,1) || last_name | last_name as "Name", salary, department_ as "Name", salary, department_id from employees where department_id = :dept_id;



--1.11

--1.1

select concat ('Oracle ', 'Internet')||' Academy' as "The Best Class" from dual;



--1.2

select substr ('Oracle Internet Academy', 13,3) as "The Net" from dual;



--1.3

select length ('Oracle Internet Academy') length from dual;



--1.4

select instr ('Oracle Internet Academy','I') as "position" from dual;



--1.5

select LPAD('Oracle',10,'*')||LPAD('Internet',12,'*')||RPAD(LPAD('Academy',11,'*'),15,'*') from dual;



--1.6

select RPAD('Oracle',9,'$')||RPAD('Internet',11,'&')||('Academy') from dual;



--1.7

select replace ('Oracle Internet Academy','Internet','2013-2014') as "The Best Class" from dual;



--1.8

SELECT order_date, LPAD(ORDER_TOTAL,7,'$') as "total" from f_orders;



--1.9

select upper(first_name) ||' '|| upper(last_name) ||' '|| upper(address)||' '|| upper(city) ||', '|| upper(state)||' '||zip as "ADDRESS" from f_customers where id = 456;



--1.10

select SUBSTR(first_name, 1,1) || last_name | last_name as "Name", salary, department_ as "Name", salary, department_id from employees where department_id = 20;

select SUBSTR(first_name, 1,1) || last_name | last_name as "Name", salary, department_ as "Name", salary, department_id from employees where department_id = :dept_id;



--1.11

select department_id, department_name, location_id department_id, department_name, location_id from departments where department_name = :dept_name;



--1.12

select department_id, department_name, location_id department_id, department_name, location_id from departments where department_name = :dept_name;



--2.1

select last_name, salary, round(salary/1.55,2) "Divided Salary" from employees where employee_id between 100 and 102;



--2.2

select last_name, salary, trunc(salary*1.0533,2) "Salary plus bonus" from employees where department_id=80; 



--2.3

select case when mod(38873,2)=1 then 'odd' else 'even' end as "38873 is an Even or Odd?" from dual;



--2.4

select round(845.553,1)from dual;

select round(30695.348,2) from dual;

select round(30695.348,-2) from dual;

select trunc(2.3454,1) from dual;



--2.5

select last_name, salary, salary/3 from employees where mod(salary,3)=0;



--2.6

select mod(34,8) as "EXAMPLE" from dual;



--2.7

select (565.784 - round(565.784, 2))*1000*(:100) as diff from dual;



--3.1

select name, event_date, round(months_between(sysdate, event_date)) as "number of months" from d_events where name = 'Vigil wedding';



--3.2

select to_date('20-Sep-2016', 'dd-Mon-yyyy') - to_date('05-Jun-2016', 'dd-Mon-yyyy') as "days before", round( months_between(to_date('20-Sep-2016', 'dd-Mon-yyyy'), to_date('05-Jun-2016', 'dd-,Mon-yyyy'))*30.5, 0) as "Days" from dual;



--3.3

select to_date('31-dec-2016','dd-mon-yyyy')- to_date('01-jan-2016','dd-mon-yyyy') as "Range Days" from dual;



--3.4

select round(sysdate, 'month') as "nearest 1st day of month", round(sysdate, 'year') as "nearest 1st day of year", trunc(sysdate, 'month') as "current month's 1st day", trunc(sysdate, 'year') as "current year's 1st day"

from dual;



--3.5

select last_day(to_date('01-jun-2005','dd-mon-yyyy')) from dual;



--3.6

select first_name, last_name , round(months_between(sysdate, birthdate)/12) "no of years" from f_staffs where first_name || ' ' || last_name = 'Bob Miller';



--3.7

select to_char(add_months(sysdate,6),'dd-mon-yyyy(DY)') as "appointment" from dual;



--3.8

select to_char(last_day(sysdate),'dd-mon-yyyy(Day)') as "deadline" from dual;



--3.9

select to_date('11/05/2016','mm/dd/yyyy') "birthday on current year", add_months(to_date('11/05/2016','mm/dd/yyyy'),12)   "birthday next year", trunc( add_months(to_date('11/05/2016','mm/dd/yyyy'),12), 'year') "1st day next year"  , round(months_between( trunc( add_months(to_date('11/05/2016','mm/dd/yyyy'),12), 'year')    ,  to_date('11/05/2016','mm/dd/yyyy'))) "month until next 1st jan" from dual;



--3.10

select  to_date('11/05/2016','mm/dd/yyyy') "birthday on current year", next_day(to_date('11/05/2016','mm/dd/yyyy'), 'Friday') "First Friday" from dual;



--3.11

months_between



--3.12

add_months



--3.13

if we have some needs to do transaction but the bank is closed due to some urgent things, we need to manipulate the date



--3.2.1

select round(86.678,2) from dual;



--3.2.2

select upper(title) "DJs on Demand Collections" from d_cds where cd_number in(90,91);



--3.2.3

select lower(last_name)||upper(substr(first_name,1,1))"User Password" from d_partners;



--3.2.4

select upper(replace( 'It''s a small world' , 'It''s a small', 'hello' )) as converted

from dual;



--3.2.5

select replace('fiddledeedum', 'dum') ||  replace('fiddledeedee', 'fiddle') "non-sense" from dual;



--3.2.6

select replace('mississippi ', 'i', '$') "Converted" from dual;



--3.2.7

select trunc(5332.342, -2) as "truncated", round(5332.342, -2) as "rounded" from dual;



--3.2.8

select trunc(3.14159, 2) as "truncated", round(3.14159, 2) as "rounded" from dual;



--3.2.9

select trunc(73.892, 1) as "truncated", round(73.892, 1) as "rounded" from dual;



--3.2.10

select to_char(next_day(add_months(sysdate,6), 'friday'), 'dd-mon-yyyy (Day)') "future" from dual;



--3.2.11

select to_char(add_months(sysdate,10*12), 'dd-mon-yyyy (Day)')"future" from dual;



--3,2,12

select to_char( last_day( to_date('01-feb-2008', 'dd-mon-yyyy')),'dd-mon-yyyy(day)')"future" from dual;



--3.2.13

select description from d_themes where description like '%ie%';



--3.2.14

select title, year from d_cds where year > 2000 and year < 2003;



--3.2.15

select employee_id, hire_date from employees where hire_date between to_date( '01-jan-1997', 'dd-mon-yyyy') and sysdate order by hire_date desc;
