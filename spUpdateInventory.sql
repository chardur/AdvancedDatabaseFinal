Create PROC spUpdateInventory
@id int,
@count int
AS
Update Inventory
Set count = @count
WHERE productID = @id