--UC12 Checking New Table Structure
use payroll_service;
--UC4 View PayrollDetails table
select payrollId,BasePay,Deductions,IncomeTax,TaxablePay,(BasePay-Deductions-TaxablePay)as NetPay from PayrollDetails;
--UC5 Retrieve Salary for a Particular employee 
select e.EmpName ,p.BasePay,p.Deductions,p.IncomeTax,p.TaxablePay,(p.BasePay-p.Deductions-p.TaxablePay)as NetPay from Employee e inner join PayrollDetails p
on e.PayrollId=p.payrollId;
--UC7 To find Sum,Average,Min,Max group by gender
select e.Gender ,min(p.BasePay-p.Deductions-p.TaxablePay)as MinNetPay from PayrollDetails p inner join Employee e on e.PayrollId=p.payrollId group by e.Gender;
select e.Gender ,max(p.BasePay-p.Deductions-p.TaxablePay)as MaxNetPay from PayrollDetails p inner join Employee e on e.PayrollId=p.payrollId group by e.Gender;
select e.Gender ,sum(p.BasePay-p.Deductions-p.TaxablePay)as SumNetPay from PayrollDetails p inner join Employee e on e.PayrollId=p.payrollId group by e.Gender;
select e.Gender ,Avg(p.BasePay-p.Deductions-p.TaxablePay)as AvgNetPay from PayrollDetails p inner join Employee e on e.PayrollId=p.payrollId group by e.Gender;