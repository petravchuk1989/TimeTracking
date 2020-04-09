SELECT [Id]
      ,[Name]
      ,[CreatedAt]
      ,[CreatedUserById]
	,([UserCreate].[FirstName] + ' ' + [UserCreate].[LastName] + ' ' + [UserCreate].[Patronymic] + ' (' + [UserCreate].[UserName]+ ')' ) as NameCreat
      ,[EditedAt]
      ,[EditedUserById]
	,([UserEdited].[FirstName] + ' ' + [UserEdited].[LastName] + ' ' + [UserEdited].[Patronymic] + ' (' + [UserEdited].[UserName]+ ')' ) as NameEd
FROM [CRM_TimeTracking_Analitics].[dbo].[Role]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserCreate] on [UserCreate].[UserId] = [Role].[CreatedUserById]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserEdited] on [UserEdited].[UserId] = [Role].[EditedUserById]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only