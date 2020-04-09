SELECT [UsersRole].[Id]
      ,[UsersRole].[UsersId]
	    ,[Users].[FIO]
      ,[UsersRole].[RoleId]
	    ,[Role].[Name]
      ,[UsersRole].[CreatedAt]
      ,[UsersRole].[CreatedUserById]
	    ,([UserCreate].[FirstName] + ' ' + [UserCreate].[LastName] + ' ' + [UserCreate].[Patronymic] + ' (' + [UserCreate].[UserName]+ ')' ) as NameCreat
      ,[UsersRole].[EditedAt]
      ,[UsersRole].[EditedUserById]
	    ,([UserEdited].[FirstName] + ' ' + [UserEdited].[LastName] + ' ' + [UserEdited].[Patronymic] + ' (' + [UserEdited].[UserName]+ ')' ) as NameEd
  FROM [CRM_TimeTracking_Analitics].[dbo].[UsersRole]
  inner join [CRM_TimeTracking_Analitics].[dbo].[Users] on [Users].[Id] = [UsersRole].[UsersId]
  inner join [CRM_TimeTracking_Analitics].[dbo].[Role] on [Role].[Id] = [UsersRole].[RoleId]
  inner join [CRM_TimeTracking_System].[dbo].[User] as [UserCreate] on [UserCreate].[UserId] = [UsersRole].[CreatedUserById]
  inner join [CRM_TimeTracking_System].[dbo].[User] as [UserEdited] on [UserEdited].[UserId] = [UsersRole].[EditedUserById]
Where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only