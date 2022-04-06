alter procedure AddEmployeeDetailss	
(
@Firstname varchar(50),
@Lastname varchar(50),
@Email varchar(50),
@Phone varchar(20),
@Password varchar(50)
)
as
begin try
     insert into EmployeeWeb (Firstname, Lastname, Email, Phone, Password) values ( @Firstname, @Lastname, @Email, @Phone, @Password)	 
end try
begin catch
  select
    ERROR_NUMBER() as ErrorNumber,
    ERROR_STATE() as ErrorState,
    ERROR_PROCEDURE() as ErrorProcedure,
    ERROR_LINE() as ErrorLine,
    ERROR_MESSAGE() as ErrorMessage;
end catch



alter procedure AddLogin	
(
@Email varchar(50),
@Password varchar(50)
)
as
declare @count int
begin try
select @count = count (Email) from EmployeeWeb where (Email = @Email and Password = @Password)
if (@count = 1)begin
     insert into EmployeeLog (Email, Password) values ( @Email, @Password)
     select * from EmployeeForm
	 end
else
	begin
		RAISERROR(1,404,16,'User doesnot Exist') 
	end
end try
begin catch
  select
    ERROR_NUMBER() as ErrorNumber,
    ERROR_STATE() as ErrorState,
    ERROR_PROCEDURE() as ErrorProcedure,
    ERROR_LINE() as ErrorLine,
    ERROR_MESSAGE() as ErrorMessage;
end catch



alter Procedure AddForm	
(
@NAME varchar(50),
@PROFILEIMAGE varchar(250),
@GENDER varchar(10),
@DEPARTMENT varchar(50),
@SALARY varchar(50),
@STARTDATE varchar(20),
@NOTES varchar(50)
)
as
begin try
     insert into EmployeeForm (NAME, PROFILEIMAGE, GENDER, DEPARTMENT, SALARY, STARTDATE, NOTES) values ( @NAME, @PROFILEIMAGE, @GENDER, @DEPARTMENT, @SALARY, @STARTDATE, @NOTES)	 
end try
begin catch
  select
    ERROR_NUMBER() as ErrorNumber,
    ERROR_STATE() as ErrorState,
    ERROR_PROCEDURE() as ErrorProcedure,
    ERROR_LINE() as ErrorLine,
    ERROR_MESSAGE() as ErrorMessage;
end catch

exec AddForm 'Sathya','djh','Male', 'shdg','8990','6-12-2012','eufhk'


