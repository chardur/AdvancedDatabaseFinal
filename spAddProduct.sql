Create PROC spAddProduct
@productName varchar(250),
@creationDate date,
@usage varchar(50),
@inventoryScanningID varchar(250), 
@color varchar(50),
@encryptedData varBinary(max)  
AS
insert into Products 
(productName, creationDate, usage, inventoryScanningID, color, encryptedData) 
values
(@productName, @creationDate, @usage, @inventoryScanningID, @color, @encryptedData)

exec spAddProduct 'test', '08/12/2018', 'test', 'test', 'test', 1234
