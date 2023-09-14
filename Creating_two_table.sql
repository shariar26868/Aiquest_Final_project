CREATE TABLE office_management.employers (
    id INT (5) PRIMARY KEY,--
    id int auto_increment,
    name VARCHAR(255) NOT NULL,
    role VARCHAR(255),
    salary int(10)
);
SELECT 
    *
FROM
    office_management.employers;
insert into office_management.employers(id,name,role,salary)value
(5588,"Mr Rahim","Area Coordinator",50000);
SELECT 
    *
FROM
    office_management.employers;
insert into office_management.employers(id,name,role,salary)value
(6677,"Mr Karim","Regional Coordinator",50000);
SELECT 
    *
FROM
    office_management.employers;
    
drop table office_management.users;
select*from office_management.users;
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
select*from office_management.users;