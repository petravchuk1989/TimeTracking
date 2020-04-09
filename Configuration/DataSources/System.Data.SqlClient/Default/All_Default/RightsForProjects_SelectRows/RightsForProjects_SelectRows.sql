SELECT [RightsForProjects].[Id]
      ,[RightsForProjects].[ProjectId]
	  ,[Project].[Name]
      ,[RightsForProjects].[UsersId]
	  ,[Users].[FIO]
      ,[RightsForProjects].[Accessibility]
      ,[RightsForProjects].[CreatedAt]
      ,[RightsForProjects].[CreatedUserById]
	  ,([UserCreate].[FirstName] + ' ' + [UserCreate].[LastName] + ' ' + [UserCreate].[Patronymic] + ' (' + [UserCreate].[UserName]+ ')' ) as NameCreat
      ,[RightsForProjects].[EditedAt]
      ,[RightsForProjects].[EditedUserById]
	  ,([UserEdited].[FirstName] + ' ' + [UserEdited].[LastName] + ' ' + [UserEdited].[Patronymic] + ' (' + [UserEdited].[UserName]+ ')' ) as NameEd
  FROM [CRM_TimeTracking_Analitics].[dbo].[RightsForProjects]
  inner join [CRM_TimeTracking_Analitics].[dbo].[Project] on [Project].[Id] = [RightsForProjects].[ProjectId]
  inner join [CRM_TimeTracking_Analitics].[dbo].[Users] on [Users].[Id] = [RightsForProjects].[UsersId]
  inner join [CRM_TimeTracking_System].[dbo].[User] as [UserCreate] on [UserCreate].[UserId] = [RightsForProjects].[CreatedUserById]
  inner join [CRM_TimeTracking_System].[dbo].[User] as [UserEdited] on [UserEdited].[UserId] = [RightsForProjects].[EditedUserById]
Where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only