--UC 11 Use ERD to build tables
use Payroll_Service

-- drop the previous stored table
drop table employee_payroll
-- create employee details table
create table Employee
( EmpID int not null Primary key identity(1,1),
  EmpName varchar(50) not null,
  Gender varchar(1) not null ,
  PhoneNumber varchar(10) not null,
  start_date date not null default ' ');
-- create Payroll details table
--Gives relationship between Employee and Payroll Details
 create table PayrollDetails
( payrollId int not null primary key, 
  BasePay int not null,
  Deductions int not null,
  IncomeTax int not null,
  TaxablePay int not null);

  Insert into PayrollDetails values
(1,60000,5000,1000,5000),(2,50000,3000,800,4000),(3,75000,6000,1200,6000);
  alter table Employee
 add PayrollId int not null Foreign key References PayrollDetails(payrollId);
 Insert into Employee(EmpName,Gender,PhoneNumber,start_date,PayrollId) values
('Mukhesh', 'M','8978496720','2020-08-29',1),('Riya','F','7896312365','2020-09-16',2),('Hari', 'M','7206326427','2020-09-18',3);
select * from Employee;
-- create Department table
 create table Departments
  ( DeptId int not null Identity(1,1) primary key,
    DeptName varchar(30) not null unique);
Insert into Departments values ('HR'),('Marketing'),('Finance'),('Advertising')
select * from Departments;
-- create Employee_epartment table
--Gives relationship between Employee and deprtment
create table Employee_Department
( EmpId int not null foreign key references employee(EmpID),
DeptId int not null foreign key references departments(DeptId))

insert into Employee_Department values
(5,1),(5,2),(6,3),(7,4);