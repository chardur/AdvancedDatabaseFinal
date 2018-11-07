create View view_90dayOrders
AS
select orderID, orderDate 
from Orders
Where orderDate >= (GetDate()-90)
