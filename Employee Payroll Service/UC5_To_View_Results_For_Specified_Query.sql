/*Retrieving data with a given condition*/
select Salary from employee_payroll where EmpName='Mukhesh';
/*Retrieving data with a given condition*/
select * from employee_payroll where StartDate between cast('2020-01-01' as date) and cast(getdate() as date);