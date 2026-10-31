
---- Creating insurace database

create database insuarcedb;

alter database insuarcedb
modify name  = [insurancedb];

--- import insurance data to SSMS through interface.


use insurancedb;

select *
from
[dbo].[InsuranceData];

select round(PremiumAmount,2)
from
[dbo].[InsuranceData];


select policyenddate
from dbo.InsuranceData

select count(policyenddate)
from dbo.InsuranceData ;

select year(policyenddate) as year_1, count( policynumber) as count_insurance_policy
from dbo.InsuranceData
group by year(policyenddate)
order by count_insurance_policy desc
