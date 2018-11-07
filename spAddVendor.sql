Create PROC spAddVendor
@vendorName varchar(150),
@address varchar(250),
@city varchar(50),
@state varchar(50), 
@zip varchar(10),
@active varchar(5)  
AS
insert into Vendors
(vendorName, address, city, state, zip, active)
values
(@vendorName, @address, @city, @state, @zip, @active)

exec spAddVendor 'test', 'test', 'test', 'test', 'test', 'test'