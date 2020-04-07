SELECT  [TimeTrack].[Id]
      ,[TimeTrack].[ListTasksId]
      ,[ListTasks].[Note] as [ListTasksName]
      ,[TimeTrack].[StartDate]
      ,[TimeTrack].[EndDate]
      ,[TimeTrack].[Note]
      ,[TimeTrack].[StatusId]
      ,[TimeTrackStatus].[Name] as [StatusName]
      ,[TimeTrack].[IsBusinessTime]
      ,[TimeTrack].[JiraTaskCode]
      ,[TimeTrack].[CreatedAt]
  FROM [dbo].[TimeTrack]
  left join [dbo].[ListTasks] on [ListTasks].[Id] = [TimeTrack].[ListTasksId]
  inner join [dbo].[TimeTrackStatus] on [TimeTrackStatus].[Id] = [TimeTrack].[StatusId]
where [TimeTrack].[ListTasksId] = @ListTasksId
and #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only