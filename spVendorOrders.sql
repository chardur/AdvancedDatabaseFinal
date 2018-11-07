Create PROC spVendorOrders
@id int
AS
select vendorID, orderID, amount, orderDate
from Orders
where vendorID = @id

exec spVendorOrders 1