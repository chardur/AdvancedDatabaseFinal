Create PROC spSearchProducts
@where varchar(250)
AS
Begin
declare @sql nvarchar(max)
set @sql = 'SELECT * FROM Products ' +@where
execute sp_executesql @sql
end

exec spSearchProducts 'WHERE ProductID = 4'