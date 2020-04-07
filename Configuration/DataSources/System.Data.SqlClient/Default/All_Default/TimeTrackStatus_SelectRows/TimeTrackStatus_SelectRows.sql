SELECT [Id]
      ,[Name]
      ,[CreatedAt]
      ,[CreatedUserById]
      ,[EditedAt]
      ,[EditedUserById]
FROM [dbo].[TimeTrackStatus]
where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only