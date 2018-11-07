create view view_productOrderDates
as
select Products.productID, productName, MAX(orderDate) as orderDate
FROM Products
left Join Orders on Products.productID = Orders.productID
group by Products.productID, productName

select * from view_productOrderDates