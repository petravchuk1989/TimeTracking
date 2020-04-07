SELECT [ListTasks].[Id]
      ,[ListTasks].[JiraTaskCode]
      ,[ListTasks].[Note]
      ,[ListTasks].[ProjectId]
	  ,[Project].[Name] as ProjectName
      ,[ListTasks].[ValidDate]
      ,[ListTasks].[CreatedAt]
      ,[ListTasks].[CreatedUserById]
      ,[ListTasks].[EditedAt]
      ,[ListTasks].[EditedUserById]
  FROM [dbo].[ListTasks]
  inner join [dbo].[Project] on [Project].[Id] = [ListTasks].[ProjectId]
  where  [ListTasks].[Id] = @Id