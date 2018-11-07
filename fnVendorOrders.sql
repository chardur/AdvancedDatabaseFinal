alter FUNCTION fnVendorOrders (@id int) 
RETURNS table
AS
RETURN
with vendorOrdersCTE as
(
select productID, orderDate
from Orders
where vendorID = @id
)
(
select top 1 *, Rank() over(order by orderDate desc) as rows
from vendorOrdersCTE
)

select * from fnVendorOrders (1)