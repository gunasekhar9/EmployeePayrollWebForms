create database EmployeeWebForms;
use EmployeeWebForms;

create table EmployeeWeb(Id int identity (1,1) primary key, Firstname varchar(50), Lastname varchar(50), Email varchar(50) unique, Phone varchar(20), Password varchar(50), RegisteredDate datetime default sysdatetime())
exec sp_help EmployeeWeb;
select * from EmployeeWeb

create table EmployeeLog(Id int identity (1,1) primary key, Email varchar(50), Password varchar(50), Loggedtime datetime default sysdatetime())
exec sp_help EmployeeLog;
select * from EmployeeLog;


create table EmployeeForm(Id int identity (1,1) primary key, NAME varchar(50),PROFILEIMAGE varchar(250), GENDER varchar(10), DEPARTMENT varchar(50), SALARY varchar(50), STARTDATE varchar(20), NOTES varchar(50))
exec sp_help EmployeeForm;
select * from EmployeeForm;
