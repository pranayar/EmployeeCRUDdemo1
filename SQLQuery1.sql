CREATE PROCEDURE EmployeeViewOrInsert
@mode nvarchar(max),
@EmpName nvarchar(max)=null,
@EmpEmailId nvarchar(max)=null,
@EmpMobileNo nvarchar(max)=null

AS
BEGIN

	SET NOCOUNT ON;

	if(@mode='GetEmpList')
	BEGIN
		SELECT 
		ID,
		EmpName,
		EmailId,
		MobileNo
		FROM tblEmployee
		END
		if(@mode='AddEmployee')
		Begin
		Insert into tblEmployee(
		EmpName,
		EmailId,
		MobileNo)

		Values(
		@EmpName,
		@EmpEmailId,
		@EmpMobileNo
		)
		end
		
end