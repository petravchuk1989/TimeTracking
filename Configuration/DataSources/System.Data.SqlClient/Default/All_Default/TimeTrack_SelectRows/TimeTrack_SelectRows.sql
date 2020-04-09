SELECT [TimeTrack].[Id]
      ,[TimeTrack].[ListTasksId]
      ,[ListTasks].[JiraTaskCode] as [ListTasksName]
      ,[TimeTrack].[StartDate]
      ,[TimeTrack].[EndDate]
      ,[TimeTrack].[Note]
      ,[TimeTrack].[StatusId]
      ,[TimeTrackStatus].[Name] as [StatusName]
      ,[TimeTrack].[IsBusinessTime]
      ,[TimeTrack].[JiraTaskCode]
      ,[TimeTrack].[CreatedAt]
      ,[TimeTrack].[CreatedUserById]
	    ,([UserCreate].[FirstName] + ' ' + [UserCreate].[LastName] + ' ' + [UserCreate].[Patronymic] + ' (' + [UserCreate].[UserName]+ ')' ) as NameCreat
      ,[TimeTrack].[EditedAt]
      ,[TimeTrack].[EditedUserById]
	    ,([UserEdited].[FirstName] + ' ' + [UserEdited].[LastName] + ' ' + [UserEdited].[Patronymic] + ' (' + [UserEdited].[UserName]+ ')' ) as NameEd
FROM [CRM_TimeTracking_Analitics].[dbo].[TimeTrack]
left join [CRM_TimeTracking_Analitics].[dbo].[ListTasks] on [ListTasks].[Id] = [TimeTrack].[ListTasksId]
inner join [CRM_TimeTracking_Analitics].[dbo].[TimeTrackStatus] on [TimeTrackStatus].[Id] = [TimeTrack].[StatusId]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserCreate] on [UserCreate].[UserId] = [TimeTrack].[CreatedUserById]
inner join [CRM_TimeTracking_System].[dbo].[User] as [UserEdited] on [UserEdited].[UserId] = [TimeTrack].[EditedUserById]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only