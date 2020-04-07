SELECT [ListTasks].[Id]
      ,[ListTasks].[JiraTaskCode]
      ,[ListTasks].[Note]
      ,[ListTasks].[ProjectId]
	    ,[Project].[Name]
      ,[ListTasks].[ValidDate]
      ,[ListTasks].[CreatedAt]
  FROM [dbo].[ListTasks]
  inner join [dbo].[Project] on [Project].[Id] = [ListTasks].[ProjectId]
  where [ListTasks].[ProjectId] = @ProjectId
 and #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only