SELECT AUser.[Id]
      ,AUser.[SystemUserId]
      ,AUser.[FIO]
      ,AUser.[CreatedAt]
      ,AUser.[CreatedUserById]
	  ,([UserCreate].[FirstName] + ' ' + [UserCreate].[LastName] + ' ' + [UserCreate].[Patronymic] + ' (' + [UserCreate].[UserName]+ ')' ) as NameCreat
      ,AUser.[EditedAt]
      ,AUser.[EditedUserById]
	  ,([UserEdited].[FirstName] + ' ' + [UserEdited].[LastName] + ' ' + [UserEdited].[Patronymic] + ' (' + [UserEdited].[UserName]+ ')' ) as NameEd
FROM [CRM_TimeTracking_Analitics].[dbo].[Users] AUser
left join [CRM_TimeTracking_System].[dbo].[User] SUser on [SUser].[UserId] = [AUser].[SystemUserId]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserCreate] on [UserCreate].[UserId] = AUser.[CreatedUserById]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserEdited] on [UserEdited].[UserId] = AUser.[EditedUserById]
where #filter_columns#
 #sort_columns#
 offset @pageOffsetRows rows fetch next @pageLimitRows rows only