CREATE FUNCTION fnConvertDate (@date DATETIME) 
RETURNS date
AS
BEGIN
declare @returnDate date
set @returnDate = convert(date, @date)
return @returnDate
end

select dbo.fnConvertDate(getdate())