create database project;
use project;
create table employee(EmpId int primary key auto_increment,EmpName varchar(25),DOJ date,Designation varchar(20),RepMgr varchar(25),DeptId int,LocId int);
desc employee;
alter table employee modify EmpName varchar(25) not null;

create table department(DeptId varchar(10) primary key, DeptName varchar(20) not null, DeptHead varchar(20));
alter table employee add foreign key(DeptId) references department(DeptId);
create table location(LocId varchar(10) primary key, LocName varchar(20) not null);
alter table employee add foreign key(LocId) references location(LocId);


alter table location add EmpId int;
alter table location add foreign key(EmpId) references employee(EmpId);

create table login(EmpId int primary key, Password varchar(20));
alter table login add foreign key(EmpId) references employee(EmpId);

create table attendance(EmpId int primary key, EmpName varchar(20), Attend_Date date, Present_Absent varchar(10));
alter table attendance add foreign key(EmpId) references employee(EmpId);

create table BootCamper(EmpId int primary key,EmpName varchar(25) not null, Grade varchar(3), Batch varchar(4), Feedback int, DeptId int);
alter table BootCamper add foreign key(DeptId) references department(DeptId);

create table Trainer(TId int primary key, TName varchar(20), Email varchar(20), DeptId int, Batch varchar(4), Contact varchar(15), Feddback int);
alter table Trainer add foreign key(DeptId) references department(DeptId);

create table Domain(DomainId int primary key, DName varchar(20), TId int);
alter table Domain add foreign key(TId) references Trainer(TId);

create table Contact(Contact varchar(15) primary key, Address varchar(30), EmailId varchar(20), EmpId int);
alter table Contact add foreign key(EmpId) references employee(EmpId);




insert into department values('D1', 'Traning', 'Shine Ravi');
insert into department values('D2', 'HR', 'Shailendra');
insert into department values('D3', 'Bootcamp', 'Ankita');
Select * from department;

insert into location values('L1', 'GVTP');
insert into location values('L2', 'MTP');
insert into location values('L3', 'Sona Tower');
insert into location values('L4', 'Ecoworld');


desc employee;
insert into employee values(1, 'Srvanthi', '2019-07-18', 'ASE', 'Shine Ravi', 1001, 2001);
insert into employee values(2, 'Thanushri', '2019-08-15', 'ASE', 'Ankita', 1002, 2002);
insert into employee values(3, 'Rohit', '2019-09-10', 'Developer', 'Surender', 1003, 2003);
insert into employee values(4, 'Ezhil', '2019-01-18', 'BA', 'Swathi', 1004, 2004);

select * from employee;
SET FOREIGN_KEY_CHECKS=0;
alter table employee drop column DeptId;
desc employee;