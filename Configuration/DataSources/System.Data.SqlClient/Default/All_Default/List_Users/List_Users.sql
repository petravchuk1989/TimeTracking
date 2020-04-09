  SELECT [Id]     
        ,[FIO] as [Name]
  FROM [dbo].[Users]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only