/*Add new column to table of gender*/
alter table employee_payroll add Gender char(1);
/*Update table*/
update employee_payroll set Gender='M' where EmpName ='Mukhesh' or EmpName ='Ram';