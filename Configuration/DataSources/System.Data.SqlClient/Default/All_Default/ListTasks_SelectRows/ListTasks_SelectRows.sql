SELECT [ListTasks].[Id]
      ,[ListTasks].[JiraTaskCode]
      ,[ListTasks].[Note]
      ,[ListTasks].[ProjectId]
	    ,[Project].[Name]
      ,[ListTasks].[ValidDate]
      ,[ListTasks].[CreatedAt]
      ,[ListTasks].[CreatedUserById]
      ,[ListTasks].[EditedAt]
      ,[ListTasks].[EditedUserById]
  FROM [dbo].[ListTasks]
  inner join [dbo].[Project] on [Project].[Id] = [ListTasks].[ProjectId]
  where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only