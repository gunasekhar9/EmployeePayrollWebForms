create database HospitalBillManagement


---Table to store Patient Personel data---
create table PatientDetails
(
PatientId int primary key not null identity(1,1),
PatientName nvarchar(50),
Gender nvarchar(50),
DateOfBirth Date
)

select * from PatientDetails


---Table to store PatientAddress data---
create table PatientAddress
(
AddressId int primary key not null identity(1,1),
Patientid int foreign key references PatientDetails(Patientid),
Address nvarchar(1000),
EmailId nvarchar(50),
MobileNumber nvarchar(50)
)

select * from PatientAddress


---Table store PatientInvestigation data
Create Table PatientInvestigations
(
InvestigationId int primary key not null identity(1,1),
PatientId int foreign key references PatientDetails(PatientId),
Investigation nvarchar(50) 
)

select * from PatientInvestigations



--Table to store Patient bills Data---
Create Table PatientBills
(
BillNumber int primary key not null identity(1,1),
PatientId int foreign key references PatientDetails(PatientId),
Fees int,
BillDate datetime not null default getdate()
)

select * from PatientBills


---select statements---
----------------------------------------------------------------------
select * from PatientDetails

select * from PatientAddress

select * from PatientInvestigations

select * from PatientBills