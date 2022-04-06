alter procedure updateD
(
@billno int,
@Name varchar(50)
)
as
begin
     update bill set Name=@Name where billno=@billno
end 

alter procedure AddD
(
@billno int,
@Name varchar(50)
)
as
begin 
     insert into bill values(@billno,@Name)	 
end

create procedure search
(
@billno int
)
as
begin 
     select * from bill where billno=@billno
end