create table VendorAudit (
	auditID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	vendorID INT,
	TimeStamp DATETIME,
	AlertType VARCHAR(100),
	Description VARCHAR(150)
);

Create Trigger tr_VendorAudit
On Vendors
For Insert
As
Begin
	Declare @Id int 
	Select @Id = vendorId from inserted
		
	insert into vendorAudit (vendorID, TimeStamp, AlertType, Description) 
	values (@Id, GETDATE(), 'Inserted', 
	'vendorID ' + Cast(@Id as nvarchar(5)) + ' was inserted')
End

insert into Vendors (vendorName, address, city, state, zip, active) 
	values ('test vendor', 'test street', 'test city', 'test state', '00000', 'False')

	select * from VendorAudit