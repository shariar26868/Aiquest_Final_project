CREATE TABLE office_management.users (
    id INT(5),
    name VARCHAR(255) NOT NULL,
    phone varchar(20),
    role VARCHAR(255),
    salary int(10),
    
    Employers_id INT,
    FOREIGN KEY (Employers_id) REFERENCES Employers(id)
);
select*from office_management.users;
insert into office_management.users(id,name,phone,role,salary,Employers_id)value
(7856,"Mr Abul","02255666777","BR",25000,5588),
(7654,"Mr Babul","01177555666","Supervisor",27500,6677),
(8768,"Miss Jorina","02299000111","BR",40000,5588),
(5748,"Mrs Morjina","01155886644","BR",38000,5588),
(5748,"Mrs Morjina","01155886644","BR",38000,5588);

alter table users
add column user_id int not null auto_increment unique key;
select*from users;
select id,name,phone,role,salary,Employers_id, count(*) from users
group by id,name,phone,role,salary,Employers_id
having count(*)>1;

create table office_management.new_users as
select distinct id,name,phone,role,salary,Employers_id
from office_management.users
group by id,name,phone,role,salary,Employers_id;

select* from office_management.new_users;
drop table office_management.new_users;

drop table office_management.users;
alter table office_management.new_users
rename to office_management.users;

select*from office_management.users;