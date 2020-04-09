SELECT [ListTasks].[Id]
      ,[ListTasks].[JiraTaskCode]
      ,[ListTasks].[Note]
      ,[ListTasks].[ProjectId]
	    ,[Project].[Name]
      ,[ListTasks].[ValidDate]
      ,[ListTasks].[CreatedAt]
      ,[ListTasks].[CreatedUserById]
	    ,([UserCreate].[FirstName] + ' ' + [UserCreate].[LastName] + ' ' + [UserCreate].[Patronymic] + ' (' + [UserCreate].[UserName]+ ')' ) as NameCreat
      ,[ListTasks].[EditedAt]
      ,[ListTasks].[EditedUserById]
      ,([UserEdited].[FirstName] + ' ' + [UserEdited].[LastName] + ' ' + [UserEdited].[Patronymic] + ' (' + [UserEdited].[UserName]+ ')' ) as NameEd
  FROM [CRM_TimeTracking_Analitics].[dbo].[ListTasks] 
inner join [CRM_TimeTracking_Analitics].[dbo].[Project]  on [Project].[Id] = [ListTasks].[ProjectId]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserCreate] on [UserCreate].[UserId] = [ListTasks].[CreatedUserById]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserEdited] on [UserEdited].[UserId] = [ListTasks].[EditedUserById]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only