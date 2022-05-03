select * from PatientDetails

select * from PatientAddress

select * from PatientInvestigations

select * from PatientBills

---------------------------------------------------------------------------------------------------------------------------------

create procedure spLoadGridView
as 
begin
SELECT        dbo.PatientBills.BillNumber,dbo.PatientBills.BillDate, dbo.PatientDetails.PatientName, dbo.PatientDetails.Gender, dbo.PatientDetails.DateOfBirth, dbo.PatientAddress.Address, dbo.PatientAddress.EmailId, dbo.PatientAddress.MobileNumber, 
                         dbo.PatientInvestigations.Investigation, dbo.PatientBills.Fees
FROM            dbo.PatientAddress INNER JOIN
                         dbo.PatientDetails ON dbo.PatientAddress.Patientid = dbo.PatientDetails.PatientId INNER JOIN
                         dbo.PatientBills ON dbo.PatientDetails.PatientId = dbo.PatientBills.PatientId INNER JOIN
                         dbo.PatientInvestigations ON dbo.PatientDetails.PatientId = dbo.PatientInvestigations.PatientId
end


---Procedure to Add New Bill-------
alter procedure spAddBill
(
@PatientName nvarchar(50),
@Gender nvarchar(50),
@DateofBirth date,
@Address nvarchar(1000),
@Emailid nvarchar(50),
@MobileNumber  nvarchar(50),
@Investigation nvarchar(50),
@Fees bigint,
@BillDate datetime
)
as 
begin
declare @PatientId int
select @PatientId = PatientId from PatientDetails where PatientName = @PatientName
   
   if(@PatientId<>0)
   begin
   insert into PatientBills (PatientId, Fees, Billdate) values (@PatientId, @Fees, getdate())
   end
else
  begin
   insert into PatientDetails (PatientName, Gender, DateOfBirth) values (@PatientName, @Gender, @DateofBirth)
   select @PatientId = PatientId from PatientDetails where  PatientName = @PatientName

  insert into PatientAddress (PatientId, Address, EmailId, MobileNumber) values (@PatientId, @Address, @Emailid, @MobileNumber)
  insert into PatientInvestigations(PatientId, Investigation) values (@PatientId, @Investigation)
  insert into PatientBills (PatientId, Fees, BillDate) values (@PatientId, @Fees, getdate())
  end
end


Create procedure spEditBill
(
@BillNumber int,
@PatientName nvarchar(50),
@Gender nvarchar(50),
@DateofBirth date,
@Address nvarchar(1000),
@Emailid nvarchar(50),
@MobileNumber  nvarchar(50),
@Investigation nvarchar(50),
@Fees bigint
)
as 
begin
declare @PatientId int
select @PatientId = PatientId from PatientBills where BillNumber = @BillNumber
   Update  PatientDetails
   set     PatientName = @PatientName,
           Gender = @Gender,
		   DateOfBirth = @DateofBirth
   where   PatientId = @PatientId

   update  PatientAddress
   set     Address = @Address,
           EmailId = @EmailId,
		   MobileNumber = @MobileNumber
   where   PatientId = @PatientId

   update  PatientInvestigations
   set     Investigation = @Investigation
   where   PatientId = @PatientId

   update  PatientBills
   set     Fees = @Fees
   where   PatientId = @PatientId
end



Create Procedure spDeleteBill
(
@BillNumber int
)
as 
begin 
    delete from PatientBills where BillNumber = @BillNumber
end


exec spDeleteBill 1