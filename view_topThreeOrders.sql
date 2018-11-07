create View view_topThreeOrders
AS
WITH topOrdersCTE AS
(
select orderID, amount from orders
)
select Top 3 * , Rank() over(order by amount desc) as orderAmount
from topOrdersCTE

select * from view_topThreeOrders