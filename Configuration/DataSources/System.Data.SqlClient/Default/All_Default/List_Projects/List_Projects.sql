select   [Id]
        ,[Name]
from [dbo].[Project]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only