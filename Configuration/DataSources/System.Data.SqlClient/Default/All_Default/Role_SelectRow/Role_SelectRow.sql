SELECT [Id]
      ,[Name]
      ,[CreatedAt]
      ,[CreatedUserById]
      ,[EditedAt]
      ,[EditedUserById]
FROM [dbo].[Role]
where [Id] = @Id