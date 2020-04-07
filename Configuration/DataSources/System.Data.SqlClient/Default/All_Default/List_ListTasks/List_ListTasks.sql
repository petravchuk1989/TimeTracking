SELECT [Id]
      ,[JiraTaskCode]     
FROM [dbo].[ListTasks]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only