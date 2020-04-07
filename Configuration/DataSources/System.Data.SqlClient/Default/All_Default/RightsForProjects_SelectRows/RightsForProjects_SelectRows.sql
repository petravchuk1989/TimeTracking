SELECT [RightsForProjects].[Id]
      ,[RightsForProjects].[ProjectId]
	  ,[Project].[Name]
      ,[RightsForProjects].[UsersId]
	  ,[Users].[FIO]
      ,[RightsForProjects].[Accessibility]
      ,[RightsForProjects].[CreatedAt]
      ,[RightsForProjects].[CreatedUserById]
      ,[RightsForProjects].[EditedAt]
      ,[RightsForProjects].[EditedUserById]
  FROM [dbo].[RightsForProjects]
  inner join [dbo].[Project] on [Project].[Id] = [RightsForProjects].[ProjectId]
  inner join [dbo].[Users] on [Users].[Id] = [RightsForProjects].[UsersId]
Where #filter_columns#
#sort_columns#
offset @pageOffsetRows rows fetch next @pageLimitRows rows only