SELECT [Id]
      ,[Name]
      ,[CreatedAt]
      ,[CreatedUserById]
      ,[EditedAt]
      ,[EditedUserById]
FROM [dbo].[TimeTrackStatus]
Where [Id] = @Id